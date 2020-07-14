.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x12511, %rsi
lea addresses_D_ht+0xed11, %rdi
nop
nop
nop
nop
add %rax, %rax
mov $49, %rcx
rep movsw
xor %r14, %r14
lea addresses_D_ht+0x1c355, %r12
nop
nop
add %rbp, %rbp
movups (%r12), %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
nop
inc %r12
lea addresses_UC_ht+0xd511, %rcx
nop
nop
inc %rdi
movw $0x6162, (%rcx)
add %rbp, %rbp
lea addresses_D_ht+0x1a8b1, %r14
nop
and $20749, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%r14)
nop
nop
nop
nop
nop
and $6261, %r14
lea addresses_WT_ht+0x1b511, %r12
and %rdi, %rdi
mov (%r12), %ebp
nop
nop
nop
sub %r14, %r14
lea addresses_D_ht+0x7411, %rax
nop
nop
nop
add $17161, %rbp
movups (%rax), %xmm7
vpextrq $1, %xmm7, %rcx
nop
and $15104, %r14
lea addresses_UC_ht+0x115b1, %rsi
lea addresses_D_ht+0x12351, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
and %r13, %r13
mov $53, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x59, %rcx
nop
dec %rsi
movb $0x61, (%rcx)
dec %rcx
lea addresses_A_ht+0xed1, %rsi
lea addresses_UC_ht+0x178f1, %rdi
nop
nop
nop
nop
nop
and $28432, %r13
mov $16, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $41051, %r13
lea addresses_WT_ht+0x1a3b6, %rbp
and %rcx, %rcx
mov (%rbp), %r12d
nop
nop
and %r14, %r14
lea addresses_UC_ht+0x2569, %rsi
lea addresses_UC_ht+0x5d11, %rdi
nop
nop
nop
nop
sub %r12, %r12
mov $65, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $27599, %rbp
lea addresses_WT_ht+0x18511, %rsi
lea addresses_A_ht+0x3511, %rdi
clflush (%rsi)
add %r12, %r12
mov $39, %rcx
rep movsw
nop
nop
nop
and $14445, %r13
lea addresses_A_ht+0xe511, %rax
nop
nop
mfence
movl $0x61626364, (%rax)
nop
nop
nop
sub %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rbx
push %rcx
push %rsi

// Store
mov $0x6f594a0000000d11, %rbx
nop
nop
nop
add %rcx, %rcx
movw $0x5152, (%rbx)
nop
nop
nop
inc %r10

// Faulty Load
lea addresses_RW+0x19511, %rbx
nop
nop
nop
and %r14, %r14
movups (%rbx), %xmm3
vpextrq $1, %xmm3, %rsi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'32': 3}
32 32 32
*/

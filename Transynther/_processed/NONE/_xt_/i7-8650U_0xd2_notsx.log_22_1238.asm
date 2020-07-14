.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x13fb8, %rdi
clflush (%rdi)
nop
nop
nop
sub %rbx, %rbx
mov $0x6162636465666768, %rax
movq %rax, (%rdi)
nop
nop
nop
nop
nop
inc %r8
lea addresses_WC_ht+0x14eb0, %rsi
lea addresses_WC_ht+0x4db0, %rdi
nop
cmp %r15, %r15
mov $125, %rcx
rep movsl
add $39937, %rsi
lea addresses_A_ht+0x11bb0, %r8
nop
nop
nop
add %r15, %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%r8)
nop
nop
sub $289, %r15
lea addresses_D_ht+0x13450, %rsi
lea addresses_D_ht+0xe010, %rdi
nop
nop
nop
sub %rdx, %rdx
mov $25, %rcx
rep movsw
nop
nop
dec %rcx
lea addresses_WC_ht+0xadb0, %rsi
inc %r15
mov $0x6162636465666768, %rdx
movq %rdx, (%rsi)
and %rbx, %rbx
lea addresses_UC_ht+0x9408, %rbx
nop
nop
nop
nop
dec %r15
vmovups (%rbx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
xor %rdi, %rdi
lea addresses_normal_ht+0xfdb0, %rsi
lea addresses_A_ht+0x7bb0, %rdi
nop
nop
nop
and $35075, %rdx
mov $18, %rcx
rep movsb
nop
nop
nop
nop
nop
add $48880, %rdi
lea addresses_A_ht+0x7dc5, %rsi
lea addresses_D_ht+0x1e270, %rdi
nop
nop
nop
nop
and $16075, %r15
mov $15, %rcx
rep movsb
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0xd1b0, %rsi
lea addresses_D_ht+0xd70, %rdi
nop
nop
nop
nop
and %r15, %r15
mov $17, %rcx
rep movsw
nop
nop
nop
add $1333, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r8
push %rdi
push %rdx

// Store
lea addresses_WC+0x2026, %rdi
nop
nop
nop
sub $43716, %rdx
movb $0x51, (%rdi)
xor %r8, %r8

// Store
lea addresses_RW+0xcb0, %r8
clflush (%r8)
sub $22240, %r13
movl $0x51525354, (%r8)
nop
add %r15, %r15

// Faulty Load
lea addresses_D+0xadb0, %r13
nop
nop
nop
and $45405, %r10
movb (%r13), %r8b
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rdx
pop %rdi
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'36': 22}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/

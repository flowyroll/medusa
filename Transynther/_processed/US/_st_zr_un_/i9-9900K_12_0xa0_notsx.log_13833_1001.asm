.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x84af, %r9
clflush (%r9)
inc %rbx
movl $0x61626364, (%r9)
nop
sub $59051, %rsi
lea addresses_A_ht+0x952f, %rsi
lea addresses_A_ht+0x134ef, %rdi
nop
inc %r10
mov $33, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x822f, %r8
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%r8)
nop
nop
nop
dec %r9
lea addresses_WC_ht+0xac6f, %r10
clflush (%r10)
nop
sub $18952, %r9
movw $0x6162, (%r10)
nop
nop
nop
cmp $55760, %r8
lea addresses_normal_ht+0x1342f, %rdi
nop
nop
nop
nop
nop
dec %r8
mov (%rdi), %ecx
and $956, %rdi
lea addresses_A_ht+0xd32f, %rsi
clflush (%rsi)
nop
nop
cmp %rbx, %rbx
movb $0x61, (%rsi)
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x1980f, %rsi
lea addresses_normal_ht+0x182e9, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor %r9, %r9
mov $2, %rcx
rep movsl
nop
add $17841, %rbx
lea addresses_A_ht+0x1702f, %rsi
lea addresses_UC_ht+0x1cc2f, %rdi
clflush (%rsi)
dec %r8
mov $1, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $53245, %rdi
lea addresses_UC_ht+0x1d22f, %rcx
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %r9
movq %r9, (%rcx)
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_WC_ht+0x1782f, %rbx
nop
nop
nop
nop
add %r10, %r10
movl $0x61626364, (%rbx)
nop
nop
nop
nop
cmp $3936, %r9
lea addresses_WC_ht+0x7b8f, %rsi
lea addresses_UC_ht+0x1248f, %rdi
clflush (%rsi)
nop
nop
nop
inc %rax
mov $121, %rcx
rep movsb
nop
xor %rsi, %rsi
lea addresses_D_ht+0x1ac2f, %r10
nop
nop
nop
nop
sub $60962, %rsi
movb $0x61, (%r10)
nop
add %r10, %r10
lea addresses_WT_ht+0x1c40f, %rdi
nop
nop
nop
nop
nop
and $16945, %rsi
movb $0x61, (%rdi)
nop
nop
inc %rsi
lea addresses_A_ht+0x12f, %rsi
lea addresses_normal_ht+0x3057, %rdi
clflush (%rdi)
nop
nop
xor $3946, %rbx
mov $107, %rcx
rep movsw
nop
nop
nop
nop
add %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x17933, %rsi
lea addresses_RW+0xdb2f, %rdi
nop
nop
nop
xor %r13, %r13
mov $81, %rcx
rep movsw
nop
add $51988, %rcx

// Store
lea addresses_RW+0x1432f, %r14
nop
nop
nop
nop
nop
add $60482, %r13
mov $0x5152535455565758, %rdi
movq %rdi, (%r14)

// Exception!!!
nop
nop
nop
mov (0), %r14
nop
nop
nop
nop
nop
sub %r15, %r15

// Faulty Load
lea addresses_US+0x17c2f, %r13
nop
nop
nop
nop
inc %rcx
vmovups (%r13), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r14
lea oracles, %r13
and $0xff, %r14
shlq $12, %r14
mov (%r13,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_RW', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 6}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'00': 671, '76': 1, '34': 13161}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 00 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 00 34 00 34 34 34 00 34 34 34 34 34 34 00 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 00 00 00 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 00 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 00 34 34 34 34 34 34 34 00 34 34 00 34 34 34 00 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 00 00 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 00 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 00 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 00 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 00
*/

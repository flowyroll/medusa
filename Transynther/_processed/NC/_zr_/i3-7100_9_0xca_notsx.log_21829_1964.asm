.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1dc7b, %r10
nop
sub %rdi, %rdi
movl $0x61626364, (%r10)
nop
add %r14, %r14
lea addresses_WC_ht+0x1a1eb, %rbx
nop
nop
nop
xor %r10, %r10
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%rbx)
cmp $47188, %r14
lea addresses_normal_ht+0x6c0b, %rsi
lea addresses_WC_ht+0x1b38b, %rdi
xor $13423, %r14
mov $24, %rcx
rep movsw
nop
nop
dec %rbp
lea addresses_WT_ht+0x1520b, %rcx
nop
nop
nop
xor $19861, %r14
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
and $45625, %rax
lea addresses_WT_ht+0x10bfd, %rsi
nop
nop
and %rcx, %rcx
vmovups (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbp
nop
xor %rbp, %rbp
lea addresses_WC_ht+0xf1eb, %rax
nop
nop
nop
nop
nop
cmp %r10, %r10
mov (%rax), %ebp
nop
nop
cmp $45875, %rsi
lea addresses_WT_ht+0x12a6b, %rsi
lea addresses_WC_ht+0x19beb, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $101, %rcx
rep movsb
nop
nop
nop
cmp $55151, %rdi
lea addresses_D_ht+0x1b57, %rbp
nop
nop
nop
nop
dec %rax
movw $0x6162, (%rbp)
sub %r10, %r10
lea addresses_A_ht+0xa7eb, %rdi
nop
nop
nop
add %rax, %rax
mov (%rdi), %esi
nop
nop
nop
nop
xor $24110, %rax
lea addresses_D_ht+0x1bcb, %r14
nop
nop
nop
add $29623, %rbp
movb $0x61, (%r14)
sub %rax, %rax
lea addresses_A_ht+0x933b, %rbp
cmp %r14, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%rbp)
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x16007, %rsi
lea addresses_UC_ht+0xb89b, %rdi
nop
nop
nop
nop
nop
and $25995, %rax
mov $100, %rcx
rep movsw
inc %rdi
lea addresses_A_ht+0x91eb, %rsi
lea addresses_WC_ht+0x416b, %rdi
nop
nop
nop
nop
add %rax, %rax
mov $111, %rcx
rep movsb
nop
dec %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x1967b, %r14
clflush (%r14)
nop
nop
nop
nop
nop
sub $24825, %rax
movw $0x5152, (%r14)
nop
nop
nop
cmp $19942, %rax

// Load
lea addresses_WT+0xd5db, %rdx
nop
cmp $4381, %rax
vmovups (%rdx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbp
nop
nop
nop
nop
nop
dec %rcx

// REPMOV
lea addresses_normal+0x181eb, %rsi
lea addresses_D+0xb573, %rdi
nop
nop
nop
nop
add $31547, %rbp
mov $94, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rax, %rax

// Faulty Load
mov $0x29cc3c00000001eb, %rax
and $2421, %r14
movups (%rax), %xmm5
vpextrq $0, %xmm5, %rcx
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': True}}
{'src': {'same': True, 'congruent': 2, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 3, 'same': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': True}}
{'src': {'same': True, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

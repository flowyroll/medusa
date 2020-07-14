.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x4509, %r8
nop
inc %r10
mov (%r8), %rcx
nop
add $34611, %rax
lea addresses_normal_ht+0xbd49, %rdx
nop
nop
nop
nop
nop
add $54843, %r14
vmovups (%rdx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r10
nop
nop
nop
add %r14, %r14
lea addresses_D_ht+0x12ba9, %rdx
nop
and $10916, %r12
mov (%rdx), %cx
add %rax, %rax
lea addresses_A_ht+0xdb59, %rsi
lea addresses_normal_ht+0xbc09, %rdi
nop
nop
nop
sub $11719, %rax
mov $20, %rcx
rep movsb
nop
nop
nop
nop
add $23837, %rsi
lea addresses_normal_ht+0x3689, %rdx
nop
nop
nop
xor %rax, %rax
movb (%rdx), %r10b
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x91cd, %rdx
nop
nop
add $16767, %r12
mov (%rdx), %cx
inc %rdi
lea addresses_WT_ht+0x1b49, %rcx
nop
inc %r12
mov (%rcx), %rsi
nop
xor %r8, %r8
lea addresses_normal_ht+0xa489, %rsi
lea addresses_A_ht+0x1c922, %rdi
xor $671, %r8
mov $44, %rcx
rep movsl
xor %r14, %r14
lea addresses_normal_ht+0xe2b7, %rsi
lea addresses_D_ht+0x7a89, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $50207, %r14
mov $125, %rcx
rep movsb
nop
nop
nop
cmp %r10, %r10
lea addresses_A_ht+0x9201, %rsi
lea addresses_D_ht+0x1d909, %rdi
nop
add $56280, %rax
mov $113, %rcx
rep movsb
nop
nop
nop
xor $48120, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x12009, %rsi
lea addresses_WT+0xbc09, %rdi
nop
nop
nop
cmp $44847, %r11
mov $8, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $29102, %r9

// Faulty Load
lea addresses_US+0x14809, %r11
nop
nop
add $60571, %rcx
mov (%r11), %rdi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 10, 'same': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'00': 139}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

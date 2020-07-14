.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x106db, %rsi
lea addresses_normal_ht+0x1379b, %rdi
nop
nop
inc %r11
mov $24, %rcx
rep movsw
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x1ae89, %rsi
lea addresses_D_ht+0x1b09b, %rdi
cmp $25035, %r8
mov $91, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %r8
lea addresses_D_ht+0x195aa, %rsi
lea addresses_normal_ht+0x1989b, %rdi
nop
nop
nop
nop
nop
xor $17931, %r14
mov $98, %rcx
rep movsw
nop
nop
sub $14474, %r11
lea addresses_UC_ht+0x351b, %rsi
nop
inc %rax
mov (%rsi), %r14w
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0xb21b, %rsi
lea addresses_A_ht+0x15d9b, %rdi
nop
nop
sub $40060, %r15
mov $84, %rcx
rep movsq
nop
nop
cmp $24438, %r8
lea addresses_D_ht+0x7c03, %rdi
clflush (%rdi)
nop
nop
dec %rcx
movl $0x61626364, (%rdi)
nop
nop
nop
add $17417, %rax
lea addresses_UC_ht+0xf587, %rsi
lea addresses_A_ht+0x1b575, %rdi
nop
cmp %r11, %r11
mov $34, %rcx
rep movsl
nop
nop
cmp %r14, %r14
lea addresses_UC_ht+0x151b, %rax
nop
nop
nop
nop
nop
and %r8, %r8
movups (%rax), %xmm1
vpextrq $1, %xmm1, %rsi
nop
nop
add $56715, %rdi
lea addresses_WC_ht+0x1307, %rsi
nop
nop
nop
nop
inc %rcx
mov (%rsi), %rax
nop
add %r14, %r14
lea addresses_D_ht+0xb59b, %rcx
nop
nop
sub %rdi, %rdi
mov (%rcx), %r14d
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_normal_ht+0x259b, %rdi
and $62315, %r14
movb (%rdi), %r15b
nop
nop
xor $9691, %rsi
lea addresses_D_ht+0x1bd0b, %rdi
nop
nop
nop
nop
nop
inc %r14
movb (%rdi), %cl
nop
nop
nop
nop
mfence
lea addresses_D_ht+0xb59b, %r8
nop
nop
nop
nop
xor %r15, %r15
movups (%r8), %xmm1
vpextrq $0, %xmm1, %rdi
sub $52698, %rdi
lea addresses_UC_ht+0x1d59b, %rsi
cmp %rdi, %rdi
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rax
nop
and $18960, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0x2d9b, %rsi
lea addresses_A+0x1d5f7, %rdi
nop
sub %r8, %r8
mov $62, %rcx
rep movsb
nop
nop
and %r12, %r12

// REPMOV
lea addresses_D+0x8d9b, %rsi
lea addresses_WC+0xeeb, %rdi
clflush (%rsi)
nop
nop
nop
inc %rbp
mov $54, %rcx
rep movsw

// Exception!!!
nop
nop
mov (0), %rax
nop
nop
nop
nop
nop
inc %r12

// Faulty Load
lea addresses_A+0x14d9b, %rax
nop
nop
nop
nop
nop
cmp $32431, %r12
vmovups (%rax), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbx
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 2, 'same': True}}
{'src': {'type': 'addresses_D', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 4, 'same': True}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 4, 'NT': True, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'36': 20970, '46': 13, '44': 202, '45': 622, '00': 22}
36 44 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 44 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 44 36 36 36 36 36 36 36 36 36 45 36 36 36 45 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 44 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 44 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 44 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 44 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/

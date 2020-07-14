.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x14c57, %rax
nop
nop
nop
nop
nop
dec %rbx
mov $0x6162636465666768, %rcx
movq %rcx, (%rax)
cmp $20214, %r11
lea addresses_D_ht+0x1c1b0, %rbp
nop
nop
cmp $45412, %rdi
mov (%rbp), %r11w
nop
nop
nop
nop
sub $64587, %rcx
lea addresses_UC_ht+0x5ca, %rdi
nop
nop
nop
dec %rdx
mov $0x6162636465666768, %rax
movq %rax, %xmm0
vmovups %ymm0, (%rdi)
nop
dec %r11
lea addresses_D_ht+0x1c635, %rsi
lea addresses_A_ht+0x18b45, %rdi
and $59509, %rax
mov $57, %rcx
rep movsw
xor $58090, %rbx
lea addresses_WT_ht+0xcd15, %rsi
lea addresses_A_ht+0x3915, %rdi
clflush (%rsi)
nop
xor $57110, %r11
mov $122, %rcx
rep movsb
nop
nop
cmp $14970, %rdx
lea addresses_normal_ht+0x11721, %rsi
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rax
movq %rax, %xmm5
and $0xffffffffffffffc0, %rsi
movaps %xmm5, (%rsi)
and $2534, %rbp
lea addresses_UC_ht+0x11115, %rsi
lea addresses_D_ht+0x15315, %rdi
nop
nop
xor $38670, %rdx
mov $74, %rcx
rep movsl
nop
nop
nop
inc %rcx
lea addresses_UC_ht+0x34fd, %rsi
lea addresses_WT_ht+0x1c9d5, %rdi
nop
nop
nop
and $38776, %r11
mov $82, %rcx
rep movsw
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x19375, %rsi
nop
nop
nop
inc %r11
movb $0x61, (%rsi)
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0xf1b5, %rsi
nop
nop
nop
nop
nop
inc %rdx
movb $0x61, (%rsi)
nop
nop
nop
nop
cmp $31109, %rdx
lea addresses_D_ht+0x104d5, %rsi
lea addresses_WC_ht+0x1408c, %rdi
inc %rbp
mov $120, %rcx
rep movsq
nop
sub %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0xcd15, %rcx
clflush (%rcx)
nop
nop
nop
cmp %rbx, %rbx
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
xor $6018, %rcx

// REPMOV
lea addresses_RW+0x1b515, %rsi
lea addresses_A+0x7d15, %rdi
nop
add $14962, %r11
mov $118, %rcx
rep movsl
nop
nop
nop
and %r10, %r10

// Load
lea addresses_RW+0x1309, %rsi
nop
nop
nop
xor %r10, %r10
mov (%rsi), %ecx
nop
nop
nop
nop
add %rbx, %rbx

// Faulty Load
lea addresses_D+0xcd15, %rcx
nop
and %r12, %r12
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_RW'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_A'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/

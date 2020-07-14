.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x6688, %r10
nop
nop
nop
nop
nop
mfence
movl $0x61626364, (%r10)
nop
nop
xor $6507, %r11
lea addresses_D_ht+0xa828, %rdx
nop
nop
nop
nop
cmp $55707, %r11
and $0xffffffffffffffc0, %rdx
vmovaps (%rdx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
nop
nop
nop
xor $21459, %r11
lea addresses_WT_ht+0x1ea68, %rcx
nop
nop
nop
nop
add $48705, %r9
mov $0x6162636465666768, %r11
movq %r11, %xmm2
movups %xmm2, (%rcx)
nop
sub $4049, %rdx
lea addresses_WT_ht+0xf88, %r9
nop
nop
cmp %rdx, %rdx
movups (%r9), %xmm1
vpextrq $0, %xmm1, %rbx
nop
nop
nop
nop
nop
xor $17690, %rsi
lea addresses_D_ht+0x73f8, %r11
nop
nop
xor $30170, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%r11)
nop
nop
cmp $47220, %r9
lea addresses_UC_ht+0x1e6a8, %rsi
lea addresses_D_ht+0xa5be, %rdi
nop
add $54611, %r11
mov $1, %rcx
rep movsl
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_WC_ht+0x1d6c8, %rcx
clflush (%rcx)
nop
nop
xor $46835, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_UC_ht+0x9348, %r11
nop
nop
nop
inc %rdi
movups (%r11), %xmm5
vpextrq $1, %xmm5, %rbx
nop
nop
nop
xor $46150, %rdi
lea addresses_UC_ht+0x4a88, %r10
nop
inc %rsi
mov (%r10), %rdx
nop
nop
and %r10, %r10
lea addresses_normal_ht+0xa808, %rsi
lea addresses_D_ht+0xdac8, %rdi
nop
nop
nop
nop
nop
and $47399, %r10
mov $63, %rcx
rep movsl
sub $53974, %rsi
lea addresses_UC_ht+0x1b988, %r9
nop
xor %rbx, %rbx
movl $0x61626364, (%r9)
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x88, %rbx
nop
nop
nop
and %r9, %r9
mov $0x6162636465666768, %r11
movq %r11, %xmm2
and $0xffffffffffffffc0, %rbx
movntdq %xmm2, (%rbx)
nop
nop
cmp $40376, %rdx
lea addresses_UC_ht+0x1ee88, %rbx
nop
nop
nop
nop
sub $56135, %rsi
movw $0x6162, (%rbx)
nop
add %r10, %r10
lea addresses_normal_ht+0x12390, %rsi
lea addresses_A_ht+0x2f08, %rdi
add $21562, %r9
mov $115, %rcx
rep movsw
nop
nop
nop
nop
sub $27882, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rax
push %rcx
push %rdx
push %rsi

// Load
lea addresses_PSE+0xff46, %rcx
nop
nop
add $23700, %rdx
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r10
nop
nop
nop
cmp $23635, %rax

// Load
lea addresses_D+0x830c, %r11
nop
nop
nop
add $50170, %rsi
movb (%r11), %r10b
nop
nop
nop
sub $16130, %rdx

// Store
lea addresses_WC+0x1e028, %r11
xor %rdx, %rdx
movw $0x5152, (%r11)
nop
and $54800, %rdx

// Store
mov $0x5d4baa0000000288, %rcx
nop
nop
add %r12, %r12
mov $0x5152535455565758, %r11
movq %r11, %xmm2
vmovntdq %ymm2, (%rcx)
nop
nop
sub %rcx, %rcx

// Store
lea addresses_WC+0x4008, %r11
nop
nop
nop
nop
cmp $36097, %r10
movl $0x51525354, (%r11)
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_UC+0x13218, %rsi
nop
nop
nop
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %r12
movq %r12, (%rsi)
nop
xor $42827, %r11

// Faulty Load
lea addresses_D+0x9e88, %rax
nop
nop
sub $61675, %r12
mov (%rax), %r11w
lea oracles, %r12
and $0xff, %r11
shlq $12, %r11
mov (%r12,%r11,1), %r11
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': True, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'36': 54}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/

.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xc8ee, %rdi
cmp $61141, %r14
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r13
xor $1984, %r12
lea addresses_A_ht+0x1591a, %rsi
lea addresses_UC_ht+0x310e, %rdi
nop
nop
nop
nop
cmp $49522, %rax
mov $8, %rcx
rep movsb
nop
nop
add $7617, %r14
lea addresses_normal_ht+0x1b5ce, %rcx
clflush (%rcx)
nop
nop
nop
add $41732, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
nop
nop
cmp $43027, %r13
lea addresses_D_ht+0x134ce, %r13
nop
nop
nop
nop
nop
add %rax, %rax
movl $0x61626364, (%r13)
nop
dec %rax
lea addresses_UC_ht+0x41ce, %rdi
nop
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
and $28129, %rcx
lea addresses_D_ht+0xd1ce, %r12
nop
nop
nop
nop
nop
add $60924, %rcx
mov (%r12), %r13w
nop
cmp %r13, %r13
lea addresses_WT_ht+0xecce, %r14
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm6
movups %xmm6, (%r14)
and $10080, %rsi
lea addresses_normal_ht+0x1992e, %rdi
clflush (%rdi)
nop
nop
sub $30315, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
movups %xmm2, (%rdi)
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0xd1ce, %rdi
nop
sub $32184, %rax
movl $0x61626364, (%rdi)
nop
nop
nop
cmp $20269, %rdi
lea addresses_WT_ht+0x174ce, %rsi
lea addresses_A_ht+0x9a0e, %rdi
clflush (%rdi)
nop
nop
inc %rax
mov $61, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rax
push %rbp
push %rbx
push %rdi
push %rsi

// Load
lea addresses_PSE+0x1a2ce, %r9
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%r9), %r11d
nop
nop
nop
nop
cmp $38079, %rbp

// Store
lea addresses_PSE+0x530e, %rdi
nop
nop
nop
nop
nop
sub %r9, %r9
mov $0x5152535455565758, %r11
movq %r11, %xmm1
movups %xmm1, (%rdi)
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_normal+0xf9ce, %rbx
inc %r11
movb $0x51, (%rbx)
nop
nop
and $58086, %r11

// Store
lea addresses_normal+0xd3d0, %rsi
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_WC+0x856e, %r9
nop
nop
sub %rax, %rax
movl $0x51525354, (%r9)
nop
nop
and $57007, %rsi

// Load
lea addresses_D+0x16dce, %r9
and %r11, %r11
mov (%r9), %edi
nop
nop
nop
nop
nop
and $21869, %r11

// Load
lea addresses_D+0x19ce, %rbx
nop
nop
nop
inc %rax
vmovups (%rbx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdi
nop
nop
nop
inc %r9

// Store
lea addresses_A+0x13dce, %r11
add $62582, %r9
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
movups %xmm6, (%r11)
nop
sub %r11, %r11

// Load
lea addresses_WC+0xd9ce, %rax
nop
nop
nop
nop
and %rbx, %rbx
vmovups (%rax), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r9
nop
nop
and %rax, %rax

// Faulty Load
lea addresses_WC+0xd9ce, %rbx
cmp $43932, %r9
movntdqa (%rbx), %xmm1
vpextrq $1, %xmm1, %rsi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'36': 1793, '00': 16198, '45': 162, '49': 3675, '1a': 1}
00 00 00 36 00 00 00 49 00 00 00 00 00 49 00 00 00 49 00 49 00 49 00 49 00 49 49 00 49 49 00 00 00 00 00 49 00 36 00 49 00 36 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 36 36 36 49 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 36 00 45 00 36 00 00 49 00 00 00 36 00 00 49 00 49 00 49 00 49 00 00 49 00 49 00 49 00 00 49 00 00 00 36 00 49 00 36 00 00 00 49 00 00 49 00 36 00 49 00 00 00 00 36 00 00 00 00 00 49 00 00 00 36 00 00 00 00 00 00 36 49 00 00 49 00 49 00 00 00 00 00 00 36 00 00 00 00 36 00 00 49 00 00 49 00 00 00 36 00 00 00 49 00 00 36 00 36 00 00 00 00 36 49 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 49 00 49 00 00 00 49 49 00 49 00 00 00 49 36 00 36 00 00 00 36 00 00 49 00 00 36 00 00 00 49 00 00 49 00 00 00 00 49 00 00 00 00 00 00 36 49 00 45 49 00 00 36 00 00 00 00 00 49 00 49 00 36 00 00 00 00 00 00 00 36 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 36 00 00 00 00 00 00 36 00 00 00 00 00 00 00 00 00 00 00 49 00 49 49 00 00 00 00 00 36 00 00 00 00 00 00 00 00 49 00 49 00 00 00 49 00 00 00 00 49 00 00 00 00 49 00 00 00 00 49 00 00 49 00 00 00 49 00 49 00 49 00 00 00 00 00 00 36 00 00 49 00 00 00 49 00 00 00 00 49 49 00 49 00 00 00 49 00 49 00 36 00 49 49 00 00 00 00 49 00 00 00 00 49 00 00 36 00 00 49 00 00 00 49 00 00 49 00 00 36 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 36 00 36 00 00 00 00 00 00 00 00 00 00 00 36 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 36 00 00 00 00 45 00 00 00 00 36 00 49 00 00 00 00 00 36 00 00 00 00 00 49 00 00 49 00 00 00 36 00 49 00 00 00 49 00 00 49 00 00 00 00 49 00 36 00 00 49 00 00 00 00 36 00 00 00 00 49 00 00 36 00 00 49 00 36 00 00 36 00 00 49 36 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 36 00 00 00 00 00 00 00 00 49 36 00 00 00 49 00 00 00 36 00 00 00 00 00 00 00 49 00 49 00 00 00 00 49 00 00 00 00 00 49 00 00 00 49 00 00 36 00 00 00 00 00 00 00 00 00 00 36 00 00 00 36 00 36 00 00 00 36 00 36 00 49 00 00 00 36 00 49 00 36 00 36 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 36 00 49 00 49 00 45 00 00 49 49 00 00 00 36 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 36 00 00 00 00 00 00 00 00 00 00 00 00 36 00 00 00 36 00 00 49 00 00 49 36 00 00 49 00 49 00 00 49 00 00 00 49 00 00 00 36 00 00 00 36 00 00 00 00 00 00 00 00 00 00 00 49 00 36 49 00 36 00 00 00 00 00 00 00 00 00 00 00 00 00 00 36 00 00 49 00 49 00 00 00 00 00 00 00 00 00 36 00 00 00 00 00 00 00 00 49 00 36 00 00 00 00 49 00 00 00 49 00 00 49 00 49 00 00 00 49 00 00 36 00 00 00 00 49 00 49 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 49 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 36 49 00 36 00 00 00 49 00 36 00 49 00 36 00 00 36 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 36 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 36 00 49 00 00 00 45 00 00 00 00 49 00 00 00 00 00 00 00 36 00 00 00 49 00 36 00 00 49 49 00 00 00 00 00 49 00 00 00 00
*/

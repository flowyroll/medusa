.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x17bc2, %rsi
lea addresses_D_ht+0x9b2c, %rdi
nop
sub $3859, %r11
mov $75, %rcx
rep movsw
nop
nop
nop
dec %rbx
lea addresses_A_ht+0x20ac, %r9
clflush (%r9)
nop
nop
nop
nop
nop
and %rdi, %rdi
mov (%r9), %cx
nop
xor %r11, %r11
lea addresses_WC_ht+0x1b02c, %rbx
nop
xor %r11, %r11
mov $0x6162636465666768, %rcx
movq %rcx, (%rbx)
nop
nop
nop
cmp %r11, %r11
lea addresses_A_ht+0xdc2c, %rsi
lea addresses_A_ht+0x1482c, %rdi
nop
nop
nop
inc %r15
mov $25, %rcx
rep movsl
nop
nop
nop
inc %r9
lea addresses_normal_ht+0xc7be, %rcx
nop
nop
nop
nop
add %rdi, %rdi
mov (%rcx), %r11
nop
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x11394, %rsi
xor $40717, %r15
movw $0x6162, (%rsi)
nop
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x1342c, %rsi
lea addresses_D_ht+0x986c, %rdi
and %r12, %r12
mov $82, %rcx
rep movsq
nop
nop
inc %r12
lea addresses_WT_ht+0x1122c, %r12
and $54029, %rsi
movb (%r12), %cl
nop
and %r12, %r12
lea addresses_D_ht+0x11e81, %rbx
nop
nop
nop
nop
nop
sub %r9, %r9
vmovups (%rbx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r15
nop
nop
nop
nop
nop
cmp $35275, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rbp
push %rbx
push %rdx

// Store
lea addresses_D+0x1bfce, %rbx
nop
sub $11047, %r8
movw $0x5152, (%rbx)
nop
nop
sub $12212, %r11

// Store
lea addresses_WT+0x1ae6c, %rbx
sub %rbp, %rbp
movb $0x51, (%rbx)
nop
nop
cmp %r11, %r11

// Store
lea addresses_UC+0x952c, %r11
and %rbp, %rbp
mov $0x5152535455565758, %r14
movq %r14, (%r11)
nop
nop
nop
nop
add $28034, %rbx

// Store
lea addresses_US+0x1143c, %rdx
add $60146, %rbp
movl $0x51525354, (%rdx)
nop
nop
nop
nop
sub $20946, %r11

// Load
mov $0x74c, %r11
xor $16749, %r14
movups (%r11), %xmm4
vpextrq $0, %xmm4, %rbp
and %rbp, %rbp

// Faulty Load
mov $0x5489ae0000000c2c, %r14
nop
nop
nop
cmp %r10, %r10
vmovups (%r14), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r11
lea oracles, %r14
and $0xff, %r11
shlq $12, %r11
mov (%r14,%r11,1), %r11
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_US', 'AVXalign': True, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'46': 9569, '80': 1, '45': 895, '00': 8122, '48': 3242}
00 00 46 00 00 00 48 48 00 46 46 46 46 46 00 48 46 00 45 46 00 48 46 46 48 00 00 00 00 00 45 46 00 45 46 00 48 00 00 00 00 46 00 46 46 46 46 00 46 00 48 00 00 00 00 46 46 46 46 46 46 00 46 46 48 00 00 00 00 46 00 46 46 00 00 00 00 00 00 45 46 48 46 46 45 00 46 00 46 46 46 46 00 48 00 00 00 00 46 00 46 46 46 48 46 46 48 00 46 46 46 46 00 00 00 00 48 48 46 46 46 45 46 45 00 46 00 48 00 00 46 48 46 46 46 46 00 48 48 00 00 00 00 46 48 46 00 46 46 46 48 00 48 00 46 46 46 46 46 46 00 48 00 00 00 00 00 00 45 46 00 45 46 46 46 00 48 00 00 00 00 46 48 46 00 46 46 00 48 46 46 00 00 46 48 46 00 46 46 00 46 00 48 00 00 45 00 00 00 00 46 46 46 48 46 46 48 00 00 00 00 00 00 00 48 46 46 46 46 00 46 00 00 46 46 00 46 45 46 00 00 46 46 46 00 48 00 46 00 00 00 00 46 48 46 46 46 00 46 00 00 45 00 46 00 46 46 00 00 00 00 00 48 46 48 46 46 46 46 00 48 00 00 00 48 46 46 46 46 45 00 45 45 48 46 46 46 46 00 48 00 00 48 48 46 46 46 46 45 00 00 00 46 00 00 00 00 00 00 46 46 46 46 46 00 00 00 00 00 48 46 46 46 46 45 46 48 00 46 45 00 00 00 46 48 46 00 48 46 00 00 00 00 46 46 00 46 46 46 46 00 46 00 00 48 48 48 00 46 00 46 46 46 46 00 46 00 48 00 46 00 00 48 00 00 00 48 48 46 46 00 48 46 46 45 00 46 48 00 00 00 46 48 46 46 46 46 00 48 46 48 46 00 46 48 46 46 46 46 00 48 00 00 00 00 46 00 46 46 46 46 46 00 46 00 48 00 48 00 00 46 48 46 46 46 46 46 46 00 48 46 48 00 00 46 48 46 46 46 46 46 46 00 48 00 00 46 46 46 46 46 46 46 46 00 48 00 46 46 46 00 46 00 48 00 00 46 00 46 48 46 46 46 46 48 00 00 00 00 00 00 46 00 46 46 46 46 00 00 46 46 46 46 00 48 00 46 00 00 46 00 46 48 00 00 46 00 00 45 46 48 46 46 46 46 46 46 00 48 00 00 00 46 46 00 46 46 46 48 46 46 48 00 46 00 46 00 46 00 00 00 00 46 46 46 46 46 46 46 00 46 00 00 45 00 00 00 46 00 46 46 46 48 46 46 46 45 46 00 46 48 46 46 46 46 00 48 00 00 46 00 46 48 46 46 46 46 00 46 46 00 00 00 00 46 48 46 46 46 00 46 00 48 00 00 45 00 46 48 46 46 46 46 00 46 00 00 48 48 46 46 46 46 48 46 46 46 00 00 45 46 46 46 46 46 46 00 48 00 46 46 46 00 46 00 48 00 48 00 00 00 00 46 48 46 46 46 00 46 00 00 46 48 46 46 46 46 00 48 00 46 00 00 46 48 46 46 46 46 00 48 46 00 00 46 48 46 46 46 46 00 48 00 00 45 00 00 46 46 46 46 46 46 46 00 48 46 48 46 00 46 46 46 00 46 46 46 46 00 48 00 00 46 48 46 00 46 46 00 48 00 48 46 46 46 48 00 46 00 48 00 48 00 00 46 48 46 48 46 00 45 46 45 00 00 00 46 46 46 46 46 46 00 46 00 48 00 00 00 00 46 48 46 00 45 46 00 48 00 00 00 00 46 48 00 45 46 00 48 00 00 00 00 46 48 46 46 46 00 00 48 00 00 00 00 00 00 46 00 46 46 48 00 00 00 00 00 45 46 46 46 46 00 48 00 46 00 00 00 00 45 46 48 46 00 46 46 46 46 00 48 00 00 00 00 46 00 46 46 00 46 00 48 00 46 00 00 46 46 48 00 48 48 00 46 46 00 46 48 46 48 46 46 46 46 00 48 48 00 00 46 48 46 46 46 46 00 00 00 00 00 00 48 00 00 00 48 00 46 46 46 00 46 46 00 46 46 48 46 00 45 46 00 46 45 00 48 46 00 00 48 46 46 46 46 46 46 00 46 00 48 00 00 00 00 46 00 46 00 46 48 46 48 46 00 00 00 00 45 00 46 46 46 00 00 48 00 00 46 48 46 46 46 46 46 46 00 48 00 00 00 00 48 46 46 00 46 46 46 46
*/

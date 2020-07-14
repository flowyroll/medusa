.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x52e5, %rsi
lea addresses_normal_ht+0x41dc, %rdi
nop
nop
nop
and %r13, %r13
mov $102, %rcx
rep movsw
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x2265, %rdi
nop
nop
add %r9, %r9
mov (%rdi), %rax
nop
nop
and %rax, %rax
lea addresses_normal_ht+0xa65, %r13
nop
nop
nop
nop
nop
inc %rdx
vmovups (%r13), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rax
nop
nop
add %r13, %r13
lea addresses_WT_ht+0xb5a5, %r13
nop
and %rcx, %rcx
and $0xffffffffffffffc0, %r13
movaps (%r13), %xmm2
vpextrq $0, %xmm2, %rax
nop
nop
nop
nop
nop
sub $3755, %rsi
lea addresses_A_ht+0x18965, %rsi
lea addresses_WC_ht+0x1b33c, %rdi
nop
nop
nop
nop
nop
xor $32107, %r12
mov $103, %rcx
rep movsw
sub %rax, %rax
lea addresses_A_ht+0xee65, %r9
cmp $50395, %r13
movb $0x61, (%r9)
nop
nop
nop
nop
and $34373, %rdx
lea addresses_UC_ht+0xcc65, %r12
nop
nop
nop
xor %rsi, %rsi
mov (%r12), %r13d
nop
nop
nop
add $10924, %r13
lea addresses_WT_ht+0x3f31, %rcx
nop
add $2894, %rax
movb (%rcx), %r13b
nop
sub %r13, %r13
lea addresses_normal_ht+0x16765, %rsi
lea addresses_WC_ht+0x7e65, %rdi
nop
nop
nop
nop
nop
cmp $42635, %rax
mov $31, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_A_ht+0xbf10, %rsi
lea addresses_D_ht+0x14a65, %rdi
nop
xor $56460, %r13
mov $123, %rcx
rep movsl
xor $31723, %rdx
lea addresses_UC_ht+0x9fe5, %rsi
lea addresses_D_ht+0x117e5, %rdi
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov $126, %rcx
rep movsl
nop
nop
add %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r9
push %rax
push %rbx
push %rdx

// Store
lea addresses_WC+0x11a65, %r12
nop
sub $47563, %rax
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%r12)
nop
nop
nop
nop
inc %rax

// Store
lea addresses_US+0x865, %r15
nop
nop
nop
inc %rdx
mov $0x5152535455565758, %rax
movq %rax, (%r15)
nop
nop
nop
nop
add $18242, %rax

// Store
lea addresses_UC+0x13e25, %r9
nop
add %rdx, %rdx
movl $0x51525354, (%r9)
nop
inc %r11

// Store
lea addresses_WC+0x1d375, %r9
nop
nop
add $28303, %rbx
mov $0x5152535455565758, %rax
movq %rax, %xmm2
vmovups %ymm2, (%r9)
nop
inc %r15

// Store
lea addresses_normal+0x18065, %r15
nop
nop
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
movups %xmm5, (%r15)
nop
nop
nop
nop
add $63296, %rdx

// Store
mov $0x7ca77a0000000985, %rax
nop
nop
nop
nop
nop
cmp %r12, %r12
movl $0x51525354, (%rax)
nop
nop
xor $25535, %rbx

// Store
lea addresses_WT+0xfa65, %rax
nop
nop
nop
nop
xor $19183, %r15
mov $0x5152535455565758, %r12
movq %r12, (%rax)
add %r12, %r12

// Faulty Load
lea addresses_WT+0x3265, %rbx
nop
nop
nop
nop
cmp %rax, %rax
movups (%rbx), %xmm6
vpextrq $0, %xmm6, %r11
lea oracles, %rax
and $0xff, %r11
shlq $12, %r11
mov (%rax,%r11,1), %r11
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT', 'AVXalign': True, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 2, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

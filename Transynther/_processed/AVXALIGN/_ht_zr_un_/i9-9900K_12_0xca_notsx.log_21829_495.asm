.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1adac, %r14
nop
nop
nop
nop
nop
and %r8, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
and $0xffffffffffffffc0, %r14
movaps %xmm3, (%r14)
nop
and %r8, %r8
lea addresses_normal_ht+0x338c, %rbp
nop
nop
nop
nop
xor $24300, %rdx
mov (%rbp), %rcx
nop
nop
nop
add $59265, %rdx
lea addresses_D_ht+0xa5f9, %rbp
nop
nop
nop
and $6197, %r8
movw $0x6162, (%rbp)
nop
add $48976, %r14
lea addresses_D_ht+0x1d28c, %rsi
lea addresses_UC_ht+0x4a8c, %rdi
nop
nop
nop
sub $56766, %r14
mov $88, %rcx
rep movsq
nop
nop
nop
nop
add $42321, %rdi
lea addresses_UC_ht+0xaa6c, %rsi
lea addresses_normal_ht+0x1275c, %rdi
clflush (%rdi)
nop
nop
nop
sub %r10, %r10
mov $45, %rcx
rep movsw
nop
and %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %rax
push %rbx
push %rcx

// Store
lea addresses_normal+0x106c, %rbx
nop
sub %r12, %r12
movl $0x51525354, (%rbx)
nop
nop
add $8781, %r14

// Store
lea addresses_RW+0xe8c, %r14
nop
nop
nop
nop
add %r13, %r13
mov $0x5152535455565758, %rax
movq %rax, %xmm1
vmovups %ymm1, (%r14)
and $38876, %r11

// Store
lea addresses_UC+0x1f5fe, %r14
nop
nop
nop
nop
cmp %rcx, %rcx
movb $0x51, (%r14)
nop
nop
nop
nop
xor %r12, %r12

// Load
lea addresses_UC+0x1b68c, %rax
nop
nop
nop
nop
add %r13, %r13
movb (%rax), %cl
xor $46193, %r11

// Store
lea addresses_PSE+0xcf8c, %rcx
nop
and %r11, %r11
mov $0x5152535455565758, %r14
movq %r14, %xmm5
movaps %xmm5, (%rcx)
nop
nop
add $42669, %r14

// Store
lea addresses_normal+0x12c88, %rbx
nop
nop
nop
inc %r14
mov $0x5152535455565758, %r11
movq %r11, (%rbx)
nop
nop
nop
cmp $17286, %rcx

// Load
lea addresses_WT+0x7695, %rcx
nop
nop
add %rbx, %rbx
mov (%rcx), %r11d
nop
dec %rcx

// Store
lea addresses_PSE+0xfa8c, %r11
nop
dec %r13
mov $0x5152535455565758, %r14
movq %r14, %xmm4
movups %xmm4, (%r11)
nop
nop
sub %rcx, %rcx

// Faulty Load
lea addresses_PSE+0xfa8c, %rcx
xor $22377, %r13
vmovntdqa (%rcx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r14
lea oracles, %r11
and $0xff, %r14
shlq $12, %r14
mov (%r11,%r14,1), %r14
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'46': 9241, '00': 12574, '06': 14}
00 00 00 46 46 00 46 46 00 46 00 00 00 46 06 46 00 00 00 46 00 00 00 00 00 46 46 00 46 00 00 46 00 46 46 00 46 46 00 46 00 00 46 00 46 46 00 46 46 00 00 46 00 46 00 00 00 46 00 46 46 00 00 46 00 46 00 00 00 00 46 00 00 46 46 46 00 00 46 00 46 46 46 00 46 46 46 00 46 46 00 46 46 00 00 00 00 46 46 00 46 00 46 46 00 46 46 00 46 00 00 00 00 46 00 46 00 46 46 00 46 46 00 46 46 00 00 00 46 46 00 46 46 00 00 46 00 46 00 46 00 46 00 46 00 00 00 46 00 46 00 00 00 00 00 00 46 46 00 00 00 46 00 46 00 46 00 00 00 00 00 00 46 00 46 00 46 00 00 00 00 46 00 00 46 46 00 00 00 00 00 00 46 00 46 46 00 46 00 46 46 00 46 00 00 00 46 00 46 00 46 00 00 00 46 00 46 46 00 00 00 00 46 46 00 46 00 00 46 46 00 46 00 00 46 00 00 46 46 00 00 46 00 46 00 00 00 00 00 46 00 00 46 00 00 00 46 46 00 00 46 00 46 00 46 00 46 00 46 00 00 00 46 00 46 00 00 00 46 00 46 00 46 00 00 00 46 00 00 00 00 00 46 00 00 46 00 46 46 46 00 46 00 46 00 46 00 00 00 46 00 46 46 00 00 46 00 00 46 00 00 46 00 46 00 46 00 00 00 46 46 00 00 00 46 00 46 46 00 00 46 46 00 00 00 00 46 46 00 46 00 46 46 00 00 46 46 00 46 00 46 00 00 46 00 00 46 00 46 00 00 00 00 46 00 46 46 00 00 46 00 00 46 00 46 00 46 46 00 46 46 00 46 00 46 46 00 00 00 00 00 00 00 46 00 00 46 00 46 00 00 46 00 46 46 00 46 00 46 46 00 00 46 00 46 00 00 00 00 00 46 00 00 00 00 46 46 00 46 46 46 46 00 46 00 46 00 46 00 46 00 00 46 00 46 00 46 46 46 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 46 00 00 46 46 00 00 00 00 00 00 46 00 46 00 00 46 00 00 46 46 00 46 00 00 46 00 46 00 46 46 00 46 46 00 00 00 46 46 00 46 00 00 46 00 46 00 46 46 00 00 46 00 00 46 00 46 46 00 00 46 46 00 00 00 46 00 00 00 46 00 00 46 00 00 00 46 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 46 46 00 46 00 46 46 00 46 46 00 00 46 46 00 00 46 00 46 00 00 00 46 46 46 00 00 46 00 46 46 00 00 46 00 46 00 00 00 00 00 00 46 46 00 46 46 46 00 46 00 00 00 46 00 00 46 46 46 00 00 46 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 46 46 00 46 00 00 00 00 00 00 46 00 46 46 00 46 46 00 00 46 00 00 00 00 46 46 00 00 00 46 00 00 46 46 46 00 00 00 00 00 46 00 46 46 00 46 46 46 00 00 00 46 00 00 00 00 46 46 00 00 46 00 00 46 00 46 00 00 46 00 00 00 46 00 00 46 00 46 46 00 46 00 00 00 00 46 00 46 46 00 00 00 00 46 00 00 00 46 00 46 46 00 46 46 00 46 46 00 00 00 00 00 00 00 00 46 00 00 46 00 46 00 00 46 00 00 00 00 46 46 00 00 46 00 00 00 46 46 00 46 00 46 46 00 46 46 00 46 00 46 00 46 00 00 00 00 00 00 00 46 00 46 00 46 00 00 00 46 00 00 00 46 46 00 46 00 00 46 00 00 00 00 46 00 00 00 46 00 46 00 00 46 00 46 00 00 46 00 00 46 00 46 00 46 46 00 46 46 00 46 00 46 46 00 46 46 00 46 00 00 46 00 00 46 00 00 00 00 46 00 00 00 46 00 46 46 00 00 00 46 00 46 46 00 46 46 00 46 00 46 46 00 46 00 46 00 46 00 46 00 46 00 46 00 00 46 46 00 00 46 46 00 46 46 00 46 46 00 46 00 00 00 00 46 00 46 46 00 46 46 00 00 46 00 46 00 46 46 00 00 00 00 46 46 46 00 00 00 46 00 00 46 00 00 46 46 00 00 46 00 46 46 00 46 46 00 00 00 00 46 00 00 00 46 00 46 46 00 46 46 00 00 46 00 46 46 00 00 00
*/

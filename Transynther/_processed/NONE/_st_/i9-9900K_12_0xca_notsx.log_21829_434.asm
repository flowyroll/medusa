.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xce1d, %rbp
and $48608, %r8
mov $0x6162636465666768, %rdi
movq %rdi, (%rbp)
nop
nop
nop
sub %r9, %r9
lea addresses_WT_ht+0x7d65, %r13
inc %rbp
mov $0x6162636465666768, %r11
movq %r11, %xmm5
and $0xffffffffffffffc0, %r13
vmovaps %ymm5, (%r13)
nop
xor $6600, %rdi
lea addresses_WT_ht+0x1d49d, %rsi
lea addresses_WC_ht+0x1bf9d, %rdi
clflush (%rsi)
nop
nop
sub %r13, %r13
mov $113, %rcx
rep movsl
nop
nop
nop
cmp $40056, %rcx
lea addresses_A_ht+0x109c1, %rsi
nop
nop
nop
nop
add $16003, %rdi
mov (%rsi), %rcx
nop
nop
nop
nop
dec %r11
lea addresses_normal_ht+0x14b05, %r8
cmp %r11, %r11
mov (%r8), %ecx
nop
nop
nop
nop
nop
and $36898, %r11
lea addresses_normal_ht+0xf275, %rsi
lea addresses_normal_ht+0x18774, %rdi
nop
and $11379, %r13
mov $126, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %r13
lea addresses_WT_ht+0x5ae1, %rcx
and $4202, %r9
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
and $0xffffffffffffffc0, %rcx
vmovntdq %ymm2, (%rcx)
nop
nop
nop
add $20619, %r8
lea addresses_WC_ht+0x170f7, %rsi
lea addresses_WC_ht+0x1c49d, %rdi
clflush (%rsi)
nop
nop
nop
nop
inc %r9
mov $74, %rcx
rep movsw
nop
nop
and %r8, %r8
lea addresses_UC_ht+0x13f9d, %r11
clflush (%r11)
inc %r9
mov $0x6162636465666768, %r13
movq %r13, %xmm0
vmovups %ymm0, (%r11)
nop
nop
nop
nop
nop
add $45, %rsi
lea addresses_WT_ht+0xcf9d, %rsi
lea addresses_WC_ht+0x1c474, %rdi
nop
nop
nop
nop
nop
sub $36777, %r8
mov $9, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_UC_ht+0xf9d, %rsi
lea addresses_WT_ht+0x1239d, %rdi
add $43382, %rbp
mov $87, %rcx
rep movsb
nop
nop
inc %rcx
lea addresses_WC_ht+0x1c15d, %rcx
nop
cmp $46168, %r8
mov (%rcx), %r11
inc %r8
lea addresses_normal_ht+0xec9d, %rsi
lea addresses_A_ht+0x12a9d, %rdi
nop
inc %r8
mov $85, %rcx
rep movsw
nop
nop
nop
nop
nop
and %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r8
push %rdi
push %rdx

// Store
lea addresses_A+0x17c53, %r13
nop
nop
nop
nop
nop
xor %r15, %r15
movl $0x51525354, (%r13)
nop
nop
dec %r15

// Load
lea addresses_WT+0x1cd9d, %r14
nop
nop
dec %rdx
mov (%r14), %r15d
inc %rdx

// Store
lea addresses_D+0x11c75, %r8
nop
nop
add $42922, %r15
movb $0x51, (%r8)
xor %r14, %r14

// Store
lea addresses_PSE+0x1801d, %r14
nop
cmp %r8, %r8
movl $0x51525354, (%r14)
nop
nop
inc %r14

// Store
lea addresses_US+0x2f9d, %r11
clflush (%r11)
nop
sub %rdi, %rdi
movb $0x51, (%r11)
nop
and $2472, %r14

// Store
mov $0x6b39da00000008fd, %r8
nop
nop
nop
nop
nop
cmp $48772, %rdx
movb $0x51, (%r8)
nop
xor %rdi, %rdi

// Store
lea addresses_normal+0xeb9d, %r14
nop
nop
nop
sub %r13, %r13
movw $0x5152, (%r14)
nop
nop
cmp $10607, %r15

// Store
lea addresses_UC+0x1611d, %r14
nop
nop
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
movaps %xmm0, (%r14)
nop
nop
nop
sub $33866, %rdi

// Store
mov $0x39d, %r11
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, (%r11)
nop
nop
nop
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_D+0x4aaa, %rdx
cmp %r13, %r13
mov $0x5152535455565758, %rdi
movq %rdi, (%rdx)
nop
nop
nop
add $35949, %r15

// Store
lea addresses_UC+0x1779d, %rdx
nop
add %r14, %r14
mov $0x5152535455565758, %r8
movq %r8, %xmm6
movups %xmm6, (%rdx)
nop
nop
nop
nop
cmp %r13, %r13

// Store
lea addresses_RW+0x18f9d, %r15
nop
and $16647, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
vmovntdq %ymm6, (%r15)
sub %r13, %r13

// Faulty Load
lea addresses_A+0x1d79d, %rdx
nop
nop
nop
xor %r15, %r15
mov (%rdx), %r13d
lea oracles, %rdi
and $0xff, %r13
shlq $12, %r13
mov (%rdi,%r13,1), %r13
pop %rdx
pop %rdi
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'dst': {'same': True, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/

.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1d18c, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
and $22150, %rbp
movl $0x61626364, (%rbx)
nop
and $63493, %rcx
lea addresses_normal_ht+0x13204, %r12
nop
nop
xor $58269, %r11
mov (%r12), %r9w
xor %rcx, %rcx
lea addresses_A_ht+0x1250a, %rbp
xor $27855, %r12
mov (%rbp), %rcx
nop
inc %r9
lea addresses_UC_ht+0xe5f2, %r9
nop
dec %r12
vmovups (%r9), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdi
nop
sub $56180, %r11
lea addresses_UC_ht+0x16d04, %rsi
lea addresses_UC_ht+0xa504, %rdi
nop
nop
nop
cmp %r12, %r12
mov $18, %rcx
rep movsw
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_A_ht+0x4d04, %rsi
lea addresses_WT_ht+0x1d714, %rdi
nop
and %r9, %r9
mov $86, %rcx
rep movsl
nop
dec %rbx
lea addresses_normal_ht+0x7ae4, %rsi
lea addresses_WC_ht+0x9778, %rdi
nop
nop
nop
nop
nop
add $34508, %rbp
mov $24, %rcx
rep movsq
nop
nop
nop
nop
add $61328, %r11
lea addresses_D_ht+0xa984, %rsi
lea addresses_A_ht+0x11f7c, %rdi
and %rbp, %rbp
mov $119, %rcx
rep movsw
and %r9, %r9
lea addresses_D_ht+0x8dda, %rdi
nop
nop
nop
nop
sub %r12, %r12
movb (%rdi), %bl
and $61963, %rdi
lea addresses_WT_ht+0x10204, %r12
nop
nop
add %rsi, %rsi
and $0xffffffffffffffc0, %r12
movntdqa (%r12), %xmm0
vpextrq $1, %xmm0, %rbp
sub $12812, %rbx
lea addresses_D_ht+0x1dd04, %rcx
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r12
movq %r12, (%rcx)
nop
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x1494c, %rsi
lea addresses_WC_ht+0x9b9a, %rdi
lfence
mov $4, %rcx
rep movsb
nop
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rcx

// Store
mov $0x1efb0100000006a4, %rax
nop
xor %r11, %r11
movb $0x51, (%rax)
nop
nop
nop
nop
add %r12, %r12

// Store
lea addresses_UC+0x18566, %rax
nop
xor %r13, %r13
mov $0x5152535455565758, %r11
movq %r11, %xmm0
movups %xmm0, (%rax)
cmp %rax, %rax

// Load
lea addresses_US+0x8904, %r14
nop
dec %rbp
movb (%r14), %r12b
nop
nop
nop
nop
add $12070, %r12

// Store
lea addresses_normal+0x1ad04, %r12
nop
nop
nop
nop
and %r11, %r11
movl $0x51525354, (%r12)
nop
nop
xor %r11, %r11

// Store
lea addresses_A+0x197e4, %rbp
nop
sub $43382, %r14
mov $0x5152535455565758, %r12
movq %r12, %xmm4
movups %xmm4, (%rbp)
xor $14685, %r12

// Store
lea addresses_D+0x1ef84, %r13
add $14157, %rax
movl $0x51525354, (%r13)
nop
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_PSE+0x1a26c, %r11
nop
nop
nop
nop
and %rcx, %rcx
movl $0x51525354, (%r11)
nop
nop
sub $44415, %r11

// Store
lea addresses_WT+0x16d04, %rbp
nop
xor %rax, %rax
movb $0x51, (%rbp)
nop
xor %r13, %r13

// Store
lea addresses_UC+0x15084, %rax
nop
cmp $54586, %rbp
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
and %rax, %rax

// Faulty Load
lea addresses_US+0x8904, %r13
nop
nop
nop
add %rcx, %rcx
mov (%r13), %rax
lea oracles, %rbp
and $0xff, %rax
shlq $12, %rax
mov (%rbp,%rax,1), %rax
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 4, 'type': 'addresses_NC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 1, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': True, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

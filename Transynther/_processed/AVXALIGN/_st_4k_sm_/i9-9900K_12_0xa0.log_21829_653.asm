.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x19995, %rsi
clflush (%rsi)
nop
xor %r14, %r14
movb (%rsi), %r13b
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0xf155, %rsi
clflush (%rsi)
nop
nop
nop
nop
add $7085, %r11
mov (%rsi), %r10w
nop
inc %r14
lea addresses_WC_ht+0x8955, %r15
nop
nop
cmp $14063, %r12
movl $0x61626364, (%r15)
nop
nop
add %r14, %r14
lea addresses_WC_ht+0xc195, %r14
nop
nop
nop
sub %rsi, %rsi
mov (%r14), %r11d
nop
nop
sub $61400, %r12
lea addresses_UC_ht+0x1d795, %rsi
lea addresses_D_ht+0x18995, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $14343, %r10
mov $21, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_WT_ht+0x10995, %r10
nop
nop
and %rdi, %rdi
movb (%r10), %r12b
nop
nop
nop
nop
dec %r12
lea addresses_D_ht+0x1c7c5, %rsi
lea addresses_WT_ht+0x11b95, %rdi
xor %r15, %r15
mov $83, %rcx
rep movsl
nop
nop
nop
sub $61908, %rcx
lea addresses_normal_ht+0x4895, %rsi
clflush (%rsi)
nop
nop
nop
add %r13, %r13
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_normal_ht+0xaf4d, %rsi
lea addresses_normal_ht+0x4615, %rdi
nop
nop
sub %r10, %r10
mov $114, %rcx
rep movsb
add %rsi, %rsi
lea addresses_A_ht+0x19195, %r10
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%r10)
nop
lfence
lea addresses_WT_ht+0x795, %rsi
lea addresses_A_ht+0x1d405, %rdi
nop
nop
nop
nop
cmp %r10, %r10
mov $18, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %r15, %r15
lea addresses_A_ht+0x9b95, %rsi
lea addresses_UC_ht+0x1e915, %rdi
nop
nop
add $45361, %r10
mov $35, %rcx
rep movsb
nop
nop
and $51446, %r15
lea addresses_WT_ht+0x16695, %r11
nop
nop
nop
nop
and %r14, %r14
movl $0x61626364, (%r11)
nop
inc %r14
lea addresses_UC_ht+0x3395, %r13
nop
nop
nop
nop
nop
add $692, %rsi
movw $0x6162, (%r13)
nop
nop
nop
xor $29661, %rcx
lea addresses_normal_ht+0x1d915, %rsi
lea addresses_A_ht+0xd505, %rdi
xor $11804, %r12
mov $13, %rcx
rep movsw
nop
nop
inc %r10
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_PSE+0x16995, %rdx
add %r14, %r14
mov $0x5152535455565758, %rbx
movq %rbx, (%rdx)
nop
dec %rdx

// Store
mov $0x21b91b0000000f95, %rdx
nop
nop
nop
nop
nop
cmp %rcx, %rcx
movw $0x5152, (%rdx)
nop
nop
xor %rdx, %rdx

// Store
lea addresses_WT+0xb695, %r12
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
movups %xmm4, (%r12)
nop
nop
add $16427, %r12

// Store
mov $0x195, %rdi
nop
nop
sub $38173, %r11
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
cmp $57450, %rdi

// Store
lea addresses_UC+0x15295, %rcx
cmp %r11, %r11
movb $0x51, (%rcx)
nop
nop
cmp $21934, %rdi

// Store
lea addresses_D+0x4e15, %rcx
cmp %rbx, %rbx
movb $0x51, (%rcx)
sub $8115, %r14

// Store
lea addresses_D+0x1d442, %r11
nop
nop
inc %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm0
movups %xmm0, (%r11)
xor %rbx, %rbx

// Store
lea addresses_normal+0xfe95, %r14
nop
and %rbx, %rbx
movl $0x51525354, (%r14)
nop
nop
nop
nop
dec %r14

// Faulty Load
lea addresses_PSE+0x16995, %r11
nop
cmp $4886, %r14
mov (%r11), %rbx
lea oracles, %rcx
and $0xff, %rbx
shlq $12, %rbx
mov (%rcx,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_NC', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_P', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal', 'AVXalign': True, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/

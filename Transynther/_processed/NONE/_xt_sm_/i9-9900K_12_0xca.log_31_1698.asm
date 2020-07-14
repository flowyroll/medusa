.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xf320, %rsi
lea addresses_A_ht+0x16b63, %rdi
nop
dec %r9
mov $3, %rcx
rep movsb
nop
nop
nop
dec %rax
lea addresses_normal_ht+0x1bc53, %rax
nop
nop
dec %r14
vmovups (%rax), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
nop
nop
and $1474, %r14
lea addresses_WC_ht+0x153c3, %rsi
lea addresses_D_ht+0x14a83, %rdi
sub %rbp, %rbp
mov $24, %rcx
rep movsw
sub $19251, %rsi
lea addresses_WC_ht+0x9e53, %rsi
lea addresses_WT_ht+0x12c53, %rdi
nop
nop
inc %r14
mov $46, %rcx
rep movsq
nop
nop
nop
nop
cmp $20057, %rsi
lea addresses_D_ht+0x6bd3, %rbp
nop
and $58748, %rdi
mov (%rbp), %cx
nop
nop
cmp %r9, %r9
lea addresses_A_ht+0x1a453, %rdi
nop
nop
nop
nop
and %rax, %rax
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
cmp $45627, %r9
lea addresses_WC_ht+0x81d3, %rsi
nop
nop
xor %r14, %r14
mov $0x6162636465666768, %r9
movq %r9, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x9453, %r9
nop
nop
and %rax, %rax
movups (%r9), %xmm0
vpextrq $0, %xmm0, %rcx
nop
dec %rbp
lea addresses_normal_ht+0x1e4d3, %rsi
nop
nop
nop
sub %r9, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%rsi)
nop
nop
sub %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rbx
push %rcx
push %rsi

// Store
lea addresses_UC+0x13453, %rcx
nop
cmp $11717, %r10
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
sub %rbx, %rbx

// Load
lea addresses_UC+0x16e53, %rsi
nop
nop
nop
nop
and %r11, %r11
movb (%rsi), %bl
xor $51437, %rsi

// Store
lea addresses_A+0xd0f1, %rsi
inc %r15
movb $0x51, (%rsi)
and $64253, %r15

// Store
mov $0xf47, %r11
nop
inc %r15
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
movups %xmm6, (%r11)
nop
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_A+0x1bc53, %rcx
clflush (%rcx)
nop
nop
cmp %r15, %r15
movw $0x5152, (%rcx)
sub %r9, %r9

// Store
lea addresses_UC+0x8353, %rbx
nop
nop
nop
nop
inc %r9
movw $0x5152, (%rbx)
nop
nop
nop
nop
inc %rbx

// Faulty Load
lea addresses_A+0x1bc53, %rbx
nop
nop
nop
nop
and %rsi, %rsi
movb (%rbx), %r9b
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rsi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': True, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_UC', 'same': False, 'AVXalign': True, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}, 'dst': {'same': True, 'type': 'addresses_D_ht', 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'52': 31}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/

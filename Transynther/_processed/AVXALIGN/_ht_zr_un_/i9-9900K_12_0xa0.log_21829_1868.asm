.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xbcce, %rbx
nop
nop
nop
xor %r8, %r8
mov (%rbx), %ax
nop
and %r9, %r9
lea addresses_D_ht+0x2a1a, %rbp
nop
nop
nop
nop
and $22564, %r8
movl $0x61626364, (%rbp)
dec %rbx
lea addresses_A_ht+0x70a, %rsi
lea addresses_A_ht+0x7d9a, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
xor $36347, %r8
mov $66, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $4580, %r9
lea addresses_WC_ht+0x226a, %rax
nop
nop
cmp $36930, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%rax)
and $43406, %r8
lea addresses_A_ht+0xd6d0, %rdi
nop
nop
add $11549, %r9
movb (%rdi), %cl
cmp %r9, %r9
lea addresses_normal_ht+0x1b6ea, %rsi
lea addresses_WC_ht+0x4aaa, %rdi
dec %rbp
mov $39, %rcx
rep movsq
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x13a5e, %rbx
nop
nop
inc %rsi
mov (%rbx), %r8w
nop
nop
nop
nop
nop
sub $27029, %r8
lea addresses_WT_ht+0xf88a, %rbp
clflush (%rbp)
nop
nop
dec %rsi
mov (%rbp), %rbx
nop
cmp %r9, %r9
lea addresses_WT_ht+0x1126a, %r9
nop
nop
sub %r8, %r8
mov (%r9), %rax
nop
and $36377, %rdi
lea addresses_D_ht+0xc12a, %rsi
add %r8, %r8
movb $0x61, (%rsi)
nop
sub %rbp, %rbp
lea addresses_WC_ht+0x2ac2, %rsi
nop
sub $34611, %rbx
mov $0x6162636465666768, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
inc %rax
lea addresses_WT_ht+0x1d92a, %rsi
lea addresses_UC_ht+0x107d8, %rdi
nop
nop
nop
nop
sub %rax, %rax
mov $85, %rcx
rep movsb
nop
dec %rsi
lea addresses_A_ht+0x12ede, %rsi
lea addresses_WC_ht+0x1269a, %rdi
nop
nop
nop
add %rbp, %rbp
mov $96, %rcx
rep movsb
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0xc12a, %rsi
lea addresses_UC_ht+0xad2a, %rdi
clflush (%rdi)
nop
nop
nop
nop
add $12779, %r8
mov $93, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $1014, %rcx
lea addresses_WC_ht+0x1d0a, %rbp
cmp $11559, %rbx
movl $0x61626364, (%rbp)
nop
xor $58232, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rbp
push %rdi
push %rsi

// Load
lea addresses_UC+0x15f7a, %rbp
nop
nop
nop
dec %rdi
mov (%rbp), %r11w
cmp $928, %r10

// Store
lea addresses_UC+0x812a, %rsi
clflush (%rsi)
nop
nop
nop
nop
cmp $31836, %r13
movl $0x51525354, (%rsi)
nop
nop
nop
nop
cmp $26404, %rdi

// Store
lea addresses_WC+0xff8a, %r10
nop
nop
nop
nop
nop
add %r15, %r15
movw $0x5152, (%r10)
and $2555, %r10

// Store
lea addresses_RW+0xfb8c, %r11
nop
nop
xor $28999, %r10
movw $0x5152, (%r11)
sub $21730, %rdi

// Faulty Load
lea addresses_UC+0x1e92a, %rbp
nop
nop
add %r11, %r11
vmovntdqa (%rbp), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r10
lea oracles, %rbp
and $0xff, %r10
shlq $12, %r10
mov (%rbp,%r10,1), %r10
pop %rsi
pop %rdi
pop %rbp
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC', 'AVXalign': True, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}}
{'44': 4777, '45': 2, '72': 1, '00': 17049}
44 00 00 00 00 44 44 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 44 44 44 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 44 44 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 44 44 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 44 44 44 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 44 44 44 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 44 44 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

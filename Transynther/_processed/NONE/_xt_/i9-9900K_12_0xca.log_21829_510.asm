.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1a7e3, %r8
nop
and %rdi, %rdi
mov (%r8), %r15d
nop
nop
nop
nop
nop
inc %r13
lea addresses_A_ht+0xbf2c, %r13
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
vmovups %ymm7, (%r13)
nop
nop
and $35108, %r15
lea addresses_D_ht+0xb9a3, %r15
nop
nop
nop
nop
cmp $32475, %r11
movl $0x61626364, (%r15)
nop
add %rdi, %rdi
lea addresses_normal_ht+0x16983, %r13
nop
nop
nop
sub %r8, %r8
mov $0x6162636465666768, %r11
movq %r11, %xmm2
vmovups %ymm2, (%r13)
nop
nop
nop
xor %r15, %r15
lea addresses_WT_ht+0x11b23, %rsi
lea addresses_D_ht+0xcb23, %rdi
inc %r13
mov $76, %rcx
rep movsq
nop
and $58246, %rbp
lea addresses_WT_ht+0xd3b7, %r13
and $25631, %rcx
mov (%r13), %rbp
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0xab23, %rbp
nop
nop
nop
nop
xor %r11, %r11
mov $0x6162636465666768, %r8
movq %r8, %xmm6
vmovups %ymm6, (%rbp)
nop
xor %rcx, %rcx
lea addresses_D_ht+0x1db23, %r11
nop
nop
nop
add $14893, %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm1
vmovups %ymm1, (%r11)
nop
nop
nop
nop
xor %r11, %r11
lea addresses_D_ht+0xa003, %rsi
lea addresses_WT_ht+0xfb23, %rdi
nop
nop
nop
nop
and $43874, %r13
mov $82, %rcx
rep movsb
nop
nop
nop
and %rbp, %rbp
lea addresses_D_ht+0x158fb, %rbp
nop
nop
inc %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%rbp)
cmp $20142, %rbp
lea addresses_D_ht+0x18ca3, %rsi
lea addresses_normal_ht+0xc393, %rdi
nop
xor %rbp, %rbp
mov $33, %rcx
rep movsw
mfence
lea addresses_normal_ht+0x4023, %rsi
lea addresses_D_ht+0x12c03, %rdi
nop
nop
nop
sub %r15, %r15
mov $88, %rcx
rep movsl
nop
add $39964, %rbp
lea addresses_UC_ht+0x547b, %rsi
lea addresses_normal_ht+0x26a3, %rdi
nop
nop
nop
cmp %r11, %r11
mov $80, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rbp
lea addresses_A_ht+0x43, %rsi
lea addresses_normal_ht+0x5b23, %rdi
clflush (%rsi)
nop
nop
nop
inc %r13
mov $113, %rcx
rep movsq
nop
nop
cmp $31951, %rcx
lea addresses_WC_ht+0x7323, %r11
nop
nop
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm1
vmovups %ymm1, (%r11)
nop
nop
nop
nop
cmp $9106, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rax
push %rbx

// Load
lea addresses_WT+0xf573, %r11
nop
nop
nop
nop
and $41397, %r8
mov (%r11), %r14
nop
add %r10, %r10

// Load
lea addresses_RW+0xcba3, %r13
sub %rax, %rax
mov (%r13), %r8
nop
nop
nop
nop
nop
dec %r13

// Store
mov $0xcaf, %r11
nop
add $22089, %r13
movb $0x51, (%r11)
add $38902, %rax

// Store
lea addresses_PSE+0x133dd, %rax
cmp $19197, %r10
movl $0x51525354, (%rax)
nop
nop
add $65203, %rbx

// Store
mov $0x5ae41900000000a3, %r11
nop
nop
xor $48329, %rax
mov $0x5152535455565758, %r10
movq %r10, %xmm3
movups %xmm3, (%r11)
nop
sub $35163, %r14

// Store
lea addresses_WC+0x161f, %r11
add $48768, %r14
mov $0x5152535455565758, %r8
movq %r8, (%r11)
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_PSE+0x1c8b, %rbx
nop
nop
nop
nop
dec %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm6
vmovups %ymm6, (%rbx)
nop
nop
add $12715, %r13

// Faulty Load
lea addresses_normal+0x18323, %r8
nop
nop
nop
nop
sub $7362, %r10
mov (%r8), %r11w
lea oracles, %rbx
and $0xff, %r11
shlq $12, %r11
mov (%rbx,%r11,1), %r11
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': True, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 4, 'NT': True, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_D_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': False, 'congruent': 11}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/

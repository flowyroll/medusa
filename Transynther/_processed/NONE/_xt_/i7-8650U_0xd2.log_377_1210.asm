.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x4d35, %rsi
lea addresses_WC_ht+0x4d55, %rdi
nop
nop
sub $48143, %rbp
mov $7, %rcx
rep movsq
dec %rbx
lea addresses_A_ht+0x10985, %r12
nop
nop
nop
nop
nop
and $2749, %r8
movl $0x61626364, (%r12)
nop
nop
sub $5383, %rbp
lea addresses_D_ht+0x1eab5, %rbx
nop
nop
nop
and $56379, %rbp
mov (%rbx), %rcx
nop
nop
cmp %r8, %r8
lea addresses_WC_ht+0x1175, %r12
clflush (%r12)
nop
nop
nop
cmp $38239, %rbp
mov (%r12), %rcx
nop
nop
nop
nop
add $40535, %rcx
lea addresses_WT_ht+0x13264, %rsi
lea addresses_normal_ht+0x1d0f5, %rdi
nop
nop
nop
nop
cmp %r15, %r15
mov $86, %rcx
rep movsw
nop
inc %r12
lea addresses_D_ht+0x10c35, %rsi
lea addresses_WT_ht+0x15c35, %rdi
and $40100, %rbx
mov $9, %rcx
rep movsw
nop
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r9
push %rbp
push %rbx
push %rcx

// Store
lea addresses_PSE+0x1e0a9, %rbx
nop
sub $6203, %rcx
movl $0x51525354, (%rbx)
nop
add $58963, %rcx

// Store
lea addresses_PSE+0xddb5, %rbp
nop
nop
add %r9, %r9
movb $0x51, (%rbp)
nop
nop
sub %r13, %r13

// Load
lea addresses_D+0x15c35, %r14
nop
nop
nop
add $49007, %r11
vmovups (%r14), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rcx
nop
xor %r11, %r11

// Load
mov $0xc35, %r11
nop
nop
nop
nop
nop
dec %rcx
movb (%r11), %r9b
nop
xor $13095, %rbx

// Load
lea addresses_US+0x5e35, %r9
nop
nop
xor %rcx, %rcx
movb (%r9), %bl
inc %r9

// Store
lea addresses_WT+0xc8b5, %r9
nop
cmp %rcx, %rcx
movl $0x51525354, (%r9)
nop
nop
nop
xor %r11, %r11

// Faulty Load
lea addresses_D+0x15c35, %r9
nop
nop
sub %rbx, %rbx
mov (%r9), %r11w
lea oracles, %r14
and $0xff, %r11
shlq $12, %r11
mov (%r14,%r11,1), %r11
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': True}}
{'36': 377}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/

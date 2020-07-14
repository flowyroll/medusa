.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x18153, %rsi
lea addresses_WC_ht+0x550f, %rdi
nop
nop
nop
nop
cmp $32915, %r13
mov $115, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $60571, %rdx
lea addresses_WC_ht+0x2b5c, %rsi
lea addresses_D_ht+0x3253, %rdi
sub %r8, %r8
mov $111, %rcx
rep movsb
nop
nop
nop
xor $40207, %rsi
lea addresses_D_ht+0x6f03, %rsi
lea addresses_D_ht+0x2d53, %rdi
clflush (%rsi)
nop
nop
add $44454, %r11
mov $56, %rcx
rep movsw
nop
xor %r11, %r11
lea addresses_WT_ht+0xb53, %r11
nop
nop
inc %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm2
vmovups %ymm2, (%r11)
add $64710, %rsi
lea addresses_WC_ht+0x7f27, %rsi
nop
nop
nop
sub %r13, %r13
mov (%rsi), %rdi
cmp %r8, %r8
lea addresses_normal_ht+0xe53, %rcx
cmp $10143, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%rcx)
and %rdi, %rdi
lea addresses_A_ht+0x8094, %r13
nop
nop
add $37666, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r13)
nop
sub %r11, %r11
lea addresses_normal_ht+0x12d53, %rsi
nop
nop
nop
nop
cmp $48193, %rdi
mov (%rsi), %r11
sub %r13, %r13
lea addresses_UC_ht+0x15553, %rsi
lea addresses_D_ht+0x16173, %rdi
nop
nop
nop
nop
inc %r14
mov $22, %rcx
rep movsl
nop
add $44501, %r14
lea addresses_D_ht+0xc1d3, %r14
nop
nop
inc %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%r14)
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_WT_ht+0x1825d, %rdi
nop
sub $46785, %r13
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %r11
nop
nop
nop
nop
cmp $42012, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x6153, %rsi
lea addresses_D+0x18c53, %rdi
nop
nop
nop
sub %r14, %r14
mov $111, %rcx
rep movsq
nop
nop
add $41034, %rbx

// Store
lea addresses_UC+0x17953, %rdi
nop
nop
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %r9
movq %r9, %xmm2
movups %xmm2, (%rdi)
nop
nop
nop
sub $6084, %r9

// Store
lea addresses_WC+0x16083, %r14
dec %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r14)
nop
nop
xor $22175, %rdi

// Store
lea addresses_PSE+0xc06d, %rbx
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%rbx)
nop
nop
nop
and $65324, %rsi

// Store
lea addresses_normal+0x8553, %rsi
nop
nop
nop
nop
nop
sub %r14, %r14
movl $0x51525354, (%rsi)
nop
nop
sub $5742, %rcx

// Load
mov $0xd3, %rcx
nop
nop
nop
nop
add %rdi, %rdi
movups (%rcx), %xmm7
vpextrq $0, %xmm7, %rbx
nop
nop
add $45853, %rbx

// Load
lea addresses_WT+0x6153, %rcx
nop
cmp $45043, %rax
mov (%rcx), %bx
cmp %rbx, %rbx

// Store
lea addresses_US+0x126c5, %rax
nop
sub %rbx, %rbx
movl $0x51525354, (%rax)
nop
nop
sub $15662, %r14

// Store
lea addresses_WC+0x15953, %rbx
nop
xor $12367, %rdi
movl $0x51525354, (%rbx)
nop
sub $54444, %r14

// Store
lea addresses_D+0x19253, %r14
nop
and %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%r14)
nop
nop
nop
xor %r9, %r9

// Faulty Load
lea addresses_A+0x6153, %r14
nop
nop
nop
and $62360, %rax
mov (%r14), %r9w
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_A'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'35': 21829}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/

.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x12fc1, %rdx
nop
nop
and $52691, %r11
movw $0x6162, (%rdx)
nop
nop
nop
nop
add %r10, %r10
lea addresses_WT_ht+0x1fc1, %rsi
lea addresses_WC_ht+0x13da9, %rdi
nop
nop
nop
nop
nop
inc %r11
mov $121, %rcx
rep movsl
nop
nop
nop
nop
xor %r8, %r8
lea addresses_WC_ht+0x1e3e7, %rdx
nop
nop
nop
nop
dec %r11
mov (%rdx), %rdi
add %r8, %r8
lea addresses_D_ht+0x153c1, %rsi
lea addresses_D_ht+0x5539, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
add $49065, %rax
mov $43, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rdx
lea addresses_UC_ht+0x114c1, %rsi
lea addresses_WT_ht+0xe2c1, %rdi
nop
nop
nop
cmp $5485, %rdx
mov $20, %rcx
rep movsq
nop
nop
nop
nop
nop
and $35999, %r11
lea addresses_normal_ht+0x7c1, %r11
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
movups %xmm4, (%r11)
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x5739, %rsi
nop
nop
nop
nop
inc %rdx
movl $0x61626364, (%rsi)
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_D_ht+0x3dc1, %rdi
nop
nop
nop
nop
nop
xor $41928, %r11
mov (%rdi), %eax
nop
nop
nop
nop
inc %rdx
lea addresses_UC_ht+0x161b1, %r8
nop
nop
nop
nop
sub %rdi, %rdi
movw $0x6162, (%r8)
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x196f5, %rsi
lea addresses_WT_ht+0xdbc1, %rdi
nop
nop
nop
nop
nop
dec %r11
mov $126, %rcx
rep movsw
cmp %rsi, %rsi
lea addresses_A_ht+0x142c1, %rsi
lea addresses_WT_ht+0x156c1, %rdi
xor $40838, %r10
mov $26, %rcx
rep movsq
nop
nop
nop
nop
sub %r8, %r8
lea addresses_WT_ht+0x10a81, %rdx
nop
nop
cmp %rcx, %rcx
movl $0x61626364, (%rdx)
nop
nop
nop
xor %r10, %r10
lea addresses_D_ht+0x4dc1, %rsi
lea addresses_D_ht+0x135c1, %rdi
clflush (%rdi)
sub $39061, %r10
mov $22, %rcx
rep movsw
nop
nop
nop
add $15614, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rax
push %rcx
push %rdi
push %rdx

// Store
lea addresses_RW+0x17b62, %r11
clflush (%r11)
nop
nop
nop
cmp $38914, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
vmovaps %ymm5, (%r11)
nop
nop
xor $43731, %r8

// Store
lea addresses_normal+0xafc1, %r12
nop
dec %rax
movb $0x51, (%r12)
nop
sub %rax, %rax

// Store
lea addresses_RW+0x1a9c1, %rdi
clflush (%rdi)
cmp %r12, %r12
movb $0x51, (%rdi)
nop
xor $51140, %r8

// Store
lea addresses_normal+0x19a41, %r12
nop
nop
cmp $34292, %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm5
movntdq %xmm5, (%r12)
add $54965, %rcx

// Store
mov $0x50b0620000000bc1, %r12
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rax
movq %rax, (%r12)
nop
nop
nop
nop
sub $46686, %r8

// Store
mov $0x50b0620000000bc1, %rcx
clflush (%rcx)
nop
nop
nop
add $32201, %r12
movb $0x51, (%rcx)
nop
nop
nop
and $56097, %rdx

// Load
lea addresses_WT+0x15181, %rax
nop
nop
nop
nop
nop
inc %r12
movaps (%rax), %xmm5
vpextrq $1, %xmm5, %r8
nop
nop
nop
and $15667, %r11

// Faulty Load
mov $0x50b0620000000bc1, %r11
nop
nop
nop
add $65533, %r12
movb (%r11), %dl
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 8, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'51': 1}
51
*/

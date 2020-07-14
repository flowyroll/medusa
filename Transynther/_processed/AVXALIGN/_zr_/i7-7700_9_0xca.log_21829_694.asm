.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x5403, %r10
clflush (%r10)
sub $53708, %rcx
mov $0x6162636465666768, %r13
movq %r13, (%r10)
nop
cmp $22772, %rsi
lea addresses_A_ht+0x181f3, %rsi
lea addresses_A_ht+0x16773, %rdi
nop
dec %r15
mov $120, %rcx
rep movsw
cmp %rdi, %rdi
lea addresses_WC_ht+0xf7eb, %rcx
nop
nop
sub $11382, %rsi
movb (%rcx), %r10b
nop
nop
nop
nop
nop
cmp $50011, %rsi
lea addresses_A_ht+0x8bb3, %rsi
lea addresses_WC_ht+0x1d8cb, %rdi
nop
cmp $39552, %rax
mov $111, %rcx
rep movsb
nop
nop
and %r10, %r10
lea addresses_WC_ht+0x15f73, %rcx
dec %rax
mov (%rcx), %r15
nop
nop
sub %rax, %rax
lea addresses_WC_ht+0x19f1a, %rcx
nop
nop
add $21665, %rdi
mov $0x6162636465666768, %r10
movq %r10, (%rcx)
xor $11568, %r13
lea addresses_normal_ht+0xfbf3, %rsi
lea addresses_A_ht+0x12967, %rdi
nop
nop
nop
nop
nop
add $34914, %r13
mov $49, %rcx
rep movsb
nop
add %rcx, %rcx
lea addresses_UC_ht+0x162df, %rsi
lea addresses_WT_ht+0x9628, %rdi
nop
and $42034, %r11
mov $66, %rcx
rep movsw
add %r10, %r10
lea addresses_UC_ht+0x10b31, %rcx
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
nop
nop
sub $3284, %r11
lea addresses_A_ht+0xf173, %rsi
lea addresses_WT_ht+0x1b2c3, %rdi
clflush (%rsi)
nop
nop
nop
dec %r11
mov $127, %rcx
rep movsq
nop
nop
add $2227, %rdi
lea addresses_WC_ht+0x14b73, %rsi
lea addresses_UC_ht+0x14ff3, %rdi
nop
nop
xor %r13, %r13
mov $52, %rcx
rep movsb
nop
sub $63419, %rsi
lea addresses_WC_ht+0x3373, %r15
nop
nop
nop
nop
nop
sub $61935, %r13
mov (%r15), %di
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x4f3b, %r15
nop
nop
nop
xor $48328, %rax
mov $0x6162636465666768, %r11
movq %r11, %xmm0
movups %xmm0, (%r15)
nop
nop
nop
xor %r11, %r11
lea addresses_WC_ht+0xf73, %rsi
clflush (%rsi)
nop
nop
nop
nop
cmp $15707, %rdi
movw $0x6162, (%rsi)
nop
nop
dec %rax
lea addresses_D_ht+0xdf13, %rsi
nop
nop
cmp $39907, %rcx
vmovups (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r11
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_WT+0x1bf73, %r12
inc %rdx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
movups %xmm2, (%r12)
nop
nop
sub %r12, %r12

// Faulty Load
lea addresses_US+0xc773, %rdx
cmp $46381, %rbx
mov (%rdx), %rcx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 7, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 1, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 8, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

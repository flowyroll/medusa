.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1ed4e, %rax
clflush (%rax)
nop
nop
dec %rdx
movb $0x61, (%rax)
nop
nop
nop
nop
nop
add $11815, %r12
lea addresses_WT_ht+0x1b871, %rsi
lea addresses_A_ht+0x16b0e, %rdi
nop
nop
nop
nop
nop
and %r13, %r13
mov $4, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_normal_ht+0x1d9a6, %rsi
cmp $54591, %rax
mov (%rsi), %r12w
nop
nop
nop
add %rdx, %rdx
lea addresses_normal_ht+0x1250e, %r12
nop
nop
nop
nop
nop
cmp $42719, %r13
vmovups (%r12), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdi
sub $58169, %rdx
lea addresses_UC_ht+0x2456, %rdi
nop
nop
nop
nop
dec %rax
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
movups %xmm3, (%rdi)
nop
nop
nop
add $12309, %rsi
lea addresses_normal_ht+0x190e, %rsi
lea addresses_UC_ht+0x7f36, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $61739, %r14
mov $17, %rcx
rep movsq
nop
add %r13, %r13
lea addresses_normal_ht+0x8d46, %rsi
lea addresses_D_ht+0x1ebb6, %rdi
nop
nop
nop
nop
and $56990, %rax
mov $12, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $39912, %rdx
lea addresses_D_ht+0x140e, %rsi
lea addresses_normal_ht+0x1574e, %rdi
clflush (%rsi)
nop
nop
cmp $39197, %r12
mov $93, %rcx
rep movsw
nop
nop
nop
nop
and %r14, %r14
lea addresses_D_ht+0x17e9e, %rcx
nop
nop
nop
nop
cmp %r13, %r13
vmovups (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rax
nop
nop
nop
nop
sub %rax, %rax
lea addresses_WT_ht+0x13e24, %rax
nop
nop
nop
nop
sub %rdi, %rdi
movb (%rax), %r13b
cmp $41015, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rax
push %rdx
push %rsi

// Store
lea addresses_normal+0xc53e, %r11
nop
nop
sub $12590, %r10
movb $0x51, (%r11)
nop
nop
nop
nop
xor $23148, %r9

// Store
lea addresses_WC+0xf70e, %r9
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %r10
movq %r10, (%r9)
nop
nop
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_normal+0x1c90e, %r9
nop
add $25247, %r10
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
vmovups %ymm0, (%r9)
nop
nop
nop
nop
sub $23366, %r11

// Store
mov $0x17f8b0000000d7c, %rax
nop
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm7
movups %xmm7, (%rax)
nop
xor $36932, %rdx

// Load
lea addresses_WC+0x10d3, %rax
nop
nop
and %r10, %r10
movb (%rax), %r9b
nop
nop
nop
nop
and %rax, %rax

// Store
lea addresses_A+0x1d0e, %r11
nop
sub $8727, %r15
movl $0x51525354, (%r11)
cmp $58858, %r11

// Store
lea addresses_WT+0xc0da, %rsi
nop
nop
nop
add $29966, %r15
mov $0x5152535455565758, %r11
movq %r11, (%rsi)
nop
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_UC+0x12dce, %rax
cmp $54519, %rsi
movw $0x5152, (%rax)
nop
nop
nop
add $57160, %rsi

// Faulty Load
lea addresses_normal+0x1c90e, %r15
nop
nop
nop
inc %rsi
movntdqa (%r15), %xmm0
vpextrq $1, %xmm0, %r9
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rsi
pop %rdx
pop %rax
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 8, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'00': 658}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

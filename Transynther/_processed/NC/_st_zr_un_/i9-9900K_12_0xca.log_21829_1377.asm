.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xe2ac, %r9
nop
nop
nop
nop
cmp %r11, %r11
mov (%r9), %di
nop
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0x448c, %r8
cmp %r13, %r13
mov (%r8), %eax
nop
cmp $2581, %rdi
lea addresses_WT_ht+0x54cc, %r11
nop
nop
nop
nop
xor %rax, %rax
movw $0x6162, (%r11)
nop
nop
inc %r11
lea addresses_normal_ht+0x1e50c, %r8
cmp $37352, %r11
mov $0x6162636465666768, %r13
movq %r13, %xmm3
and $0xffffffffffffffc0, %r8
movntdq %xmm3, (%r8)
nop
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0xa86c, %r11
xor $21415, %rcx
mov (%r11), %eax
nop
nop
nop
nop
nop
add $25127, %r11
lea addresses_WC_ht+0x6534, %r9
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm6
movups %xmm6, (%r9)
nop
nop
and %r13, %r13
lea addresses_D_ht+0xc64, %rdi
lfence
mov $0x6162636465666768, %r8
movq %r8, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
add %r8, %r8
lea addresses_A_ht+0x228c, %r8
sub %r9, %r9
movb $0x61, (%r8)
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_UC_ht+0x17fcc, %rsi
lea addresses_UC_ht+0x15c3c, %rdi
nop
nop
cmp $49244, %r9
mov $77, %rcx
rep movsb
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_WC_ht+0x95bc, %r11
nop
nop
nop
nop
sub $3441, %r9
mov (%r11), %r8d
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_A_ht+0x1a4cc, %rax
nop
nop
cmp %r8, %r8
movb $0x61, (%rax)
nop
and $58890, %r8
lea addresses_UC_ht+0x9bdc, %rsi
lea addresses_WT_ht+0xe18c, %rdi
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $5, %rcx
rep movsl
nop
add %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r15
push %rax
push %rsi

// Store
lea addresses_normal+0x1ce8c, %rsi
nop
add $14431, %rax
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_normal+0x1460c, %r12
sub $19411, %r13
movw $0x5152, (%r12)
xor %r11, %r11

// Store
lea addresses_normal+0x6cb4, %r11
nop
nop
nop
sub %r15, %r15
mov $0x5152535455565758, %rax
movq %rax, %xmm1
vmovups %ymm1, (%r11)
add %r11, %r11

// Load
lea addresses_PSE+0x259c, %r12
nop
nop
nop
sub %rsi, %rsi
movups (%r12), %xmm6
vpextrq $0, %xmm6, %rax
nop
and $45895, %r15

// Faulty Load
mov $0xa7b5b0000000e8c, %rsi
nop
nop
nop
nop
nop
inc %r15
vmovups (%rsi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r14
lea oracles, %r13
and $0xff, %r14
shlq $12, %r14
mov (%r13,%r14,1), %r14
pop %rsi
pop %rax
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': True, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'25': 1321, 'ff': 74, '00': 20426, '33': 8}
00 00 00 00 00 00 00 00 00 00 00 00 00 25 00 00 00 00 00 25 00 25 00 00 00 00 00 00 00 00 00 00 00 00 25 00 00 00 00 00 25 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 25 00 00 00 00 00 00 00 00 25 25 00 25 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 25 00 00 00 25 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 25 00 25 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 25 00 00 00 00 25 00 00 00 00 00 00 00 00 00 00 00 00 25 00 00 00 00 25 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 25 00 25 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 25 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 25 00 00 00 00 00 00 00 00 00 00 00 00 00 00 25 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 25 25 00 25 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 25 00 00 00 00 25 00 00 00 00 00 00 00 00 25 00 25 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 25 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 25 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 25 00 25 25 00 00 00 00 00 00 25 00 00 00 00 00 00 00 00 00 25 00 00 25 00 00 00 00 00 00 00 25 00 00 00 25 00 25 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 25 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 25 00 00 00 00 00 00 00 00 00 00 00 25 00 25 25 00 25 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 25 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 25 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 25 00 00 00 00 25 00 25 25 00 00 00 00 00 00 00 00 00 00 00 25 00 00 00 00 00 00 00 00 00 00 00 00 25 00 00 00 25 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 25 00 00 00 00 00 00 00 00 00 25 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 25 00 00 00 00 00 00 00 00 00 00 25 00 00 00 25 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 25 00 00 00 00 00 00 00 00 00 00 00 25 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 25 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

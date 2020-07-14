.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xabec, %rsi
lea addresses_WT_ht+0x105ac, %rdi
xor %r11, %r11
mov $118, %rcx
rep movsb
nop
sub $36031, %r9
lea addresses_UC_ht+0x14ac, %rsi
xor %r13, %r13
mov (%rsi), %r11
nop
nop
nop
cmp $59719, %r13
lea addresses_UC_ht+0xa72c, %rdi
nop
nop
nop
and $27696, %rdx
movw $0x6162, (%rdi)
nop
nop
nop
add $19034, %rcx
lea addresses_A_ht+0xdc68, %r13
dec %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r13)
nop
nop
nop
nop
inc %rdx
lea addresses_UC_ht+0x90ac, %rsi
lea addresses_WC_ht+0xfe6c, %rdi
clflush (%rsi)
nop
nop
nop
nop
and $45615, %rax
mov $48, %rcx
rep movsq
nop
sub $58818, %r13
lea addresses_D_ht+0xe6c, %r11
nop
and $56769, %r13
movb (%r11), %cl
nop
sub %r9, %r9
lea addresses_normal_ht+0xeaec, %rsi
lea addresses_D_ht+0xc262, %rdi
nop
nop
nop
nop
nop
and $30686, %r9
mov $104, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $4344, %rdi
lea addresses_UC_ht+0xedac, %r13
nop
nop
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
and $0xffffffffffffffc0, %r13
vmovntdq %ymm6, (%r13)
nop
nop
nop
sub %r11, %r11
lea addresses_normal_ht+0x88ac, %rcx
cmp %rdx, %rdx
mov (%rcx), %esi
nop
nop
sub %r9, %r9
lea addresses_A_ht+0x1a438, %r13
nop
nop
sub $60081, %r11
movl $0x61626364, (%r13)
nop
nop
nop
sub $25336, %r11
lea addresses_A_ht+0x1cabc, %rsi
lea addresses_A_ht+0x2827, %rdi
clflush (%rsi)
dec %rdx
mov $28, %rcx
rep movsl
cmp %rcx, %rcx
lea addresses_WC_ht+0x12b54, %r13
nop
inc %r9
movb (%r13), %dl
nop
nop
nop
add %rdx, %rdx
lea addresses_UC_ht+0x56ac, %rsi
lea addresses_WC_ht+0x64ac, %rdi
nop
nop
cmp $47276, %r13
mov $19, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_D_ht+0xe08c, %rdx
nop
nop
nop
and $9272, %r11
and $0xffffffffffffffc0, %rdx
movntdqa (%rdx), %xmm7
vpextrq $1, %xmm7, %r13
cmp $34114, %r11
lea addresses_UC_ht+0x11df8, %rdi
nop
nop
nop
nop
and $42433, %rcx
movb $0x61, (%rdi)
nop
nop
sub %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %r9
push %rax
push %rcx

// Load
lea addresses_US+0x40cc, %rcx
clflush (%rcx)
sub $32007, %r8
mov (%rcx), %r9
nop
nop
nop
nop
xor $23011, %r8

// Store
lea addresses_US+0x72ac, %rcx
add $24590, %r12
movb $0x51, (%rcx)
nop
and %r9, %r9

// Store
lea addresses_D+0x98b4, %rax
cmp %r11, %r11
movb $0x51, (%rax)
nop
nop
nop
nop
nop
sub $19332, %r12

// Store
lea addresses_WT+0x72e4, %rax
nop
inc %r14
mov $0x5152535455565758, %r8
movq %r8, (%rax)
add %rax, %rax

// Faulty Load
lea addresses_A+0x158ac, %r14
nop
nop
nop
nop
nop
xor %r9, %r9
vmovups (%r14), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'00': 53}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

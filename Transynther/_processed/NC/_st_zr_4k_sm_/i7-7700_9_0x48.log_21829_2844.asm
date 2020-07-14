.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x119cd, %rsi
lea addresses_normal_ht+0x1166d, %rdi
and $53183, %rbp
mov $80, %rcx
rep movsq
sub $53962, %r9
lea addresses_normal_ht+0x7155, %r13
and $13180, %r15
movb $0x61, (%r13)
nop
nop
sub $35710, %r9
lea addresses_normal_ht+0x12cd5, %rsi
lea addresses_WC_ht+0xbe5d, %rdi
nop
cmp %r10, %r10
mov $101, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_D_ht+0x19555, %r10
nop
nop
nop
inc %rsi
mov (%r10), %r13
dec %rsi
lea addresses_WT_ht+0xfd55, %rsi
nop
nop
nop
sub %rdi, %rdi
and $0xffffffffffffffc0, %rsi
vmovntdqa (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r9
nop
nop
nop
and $7527, %rbp
lea addresses_WC_ht+0x5855, %r9
nop
nop
nop
sub %rcx, %rcx
mov (%r9), %r13d
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x12555, %rsi
lea addresses_normal_ht+0xce55, %rdi
nop
mfence
mov $104, %rcx
rep movsw
nop
xor %r9, %r9
lea addresses_WT_ht+0xde5, %rsi
lea addresses_UC_ht+0xa155, %rdi
nop
nop
nop
sub $36325, %r10
mov $84, %rcx
rep movsl
nop
nop
nop
nop
add %r15, %r15
lea addresses_WT_ht+0x1cb61, %rsi
lea addresses_UC_ht+0x18d55, %rdi
clflush (%rdi)
nop
nop
xor $1912, %r10
mov $81, %rcx
rep movsb
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x1d539, %rdi
nop
nop
nop
nop
nop
add %r10, %r10
movl $0x61626364, (%rdi)
nop
nop
nop
add %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %rbx
push %rcx
push %rdi

// Store
lea addresses_D+0x4595, %r8
clflush (%r8)
nop
inc %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
movntdq %xmm6, (%r8)
dec %rdi

// Store
mov $0x2d2e810000000d55, %r11
sub $54582, %r13
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r11)
nop
nop
nop
xor $3287, %r11

// Store
lea addresses_RW+0x555, %r13
nop
nop
dec %rdi
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%r13)
nop
nop
nop
nop
dec %rbx

// Store
lea addresses_RW+0xda59, %r13
nop
nop
nop
inc %rbx
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovups %ymm1, (%r13)
nop
nop
nop
nop
nop
cmp %r8, %r8

// Load
mov $0x74757c0000000335, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub %r11, %r11
movups (%rdi), %xmm6
vpextrq $1, %xmm6, %rbx
nop
dec %rcx

// Faulty Load
mov $0x2d2e810000000d55, %rbx
nop
nop
nop
nop
sub $55534, %r15
movb (%rbx), %r13b
lea oracles, %rdi
and $0xff, %r13
shlq $12, %r13
mov (%rdi,%r13,1), %r13
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'58': 21620, '00': 209}
00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/

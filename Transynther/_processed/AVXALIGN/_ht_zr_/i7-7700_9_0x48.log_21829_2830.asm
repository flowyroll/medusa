.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x8bdf, %rsi
lea addresses_A_ht+0x13967, %rdi
nop
cmp $39156, %r10
mov $22, %rcx
rep movsw
nop
xor $35477, %r14
lea addresses_WT_ht+0x1c647, %rsi
lea addresses_UC_ht+0x12a57, %rdi
nop
dec %r9
mov $79, %rcx
rep movsb
nop
sub $37702, %rdi
lea addresses_normal_ht+0xdec7, %rdi
nop
nop
nop
nop
nop
dec %r11
movb $0x61, (%rdi)
nop
nop
nop
nop
cmp $10606, %rdi
lea addresses_WT_ht+0x196c7, %rdi
nop
cmp %r14, %r14
mov (%rdi), %r10w
nop
nop
nop
nop
nop
dec %r11
lea addresses_WT_ht+0xae22, %rsi
lea addresses_WT_ht+0x18347, %rdi
nop
and %rbx, %rbx
mov $40, %rcx
rep movsq
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x4ec7, %rsi
lea addresses_normal_ht+0xd242, %rdi
nop
xor %r10, %r10
mov $49, %rcx
rep movsq
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x191b, %r9
nop
and $38490, %rcx
vmovups (%r9), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
nop
mfence
lea addresses_WC_ht+0xaf37, %rbx
dec %rcx
and $0xffffffffffffffc0, %rbx
vmovntdqa (%rbx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r9
nop
nop
nop
nop
add $40304, %rsi
lea addresses_A_ht+0x18c17, %rcx
nop
xor $2709, %rsi
movw $0x6162, (%rcx)
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x1ec77, %rsi
lea addresses_normal_ht+0x7b97, %rdi
nop
nop
dec %r11
mov $24, %rcx
rep movsl
nop
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0x8d67, %rdi
nop
cmp $34160, %rcx
movl $0x61626364, (%rdi)
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x6c07, %rcx
xor $23241, %r10
and $0xffffffffffffffc0, %rcx
vmovntdqa (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r9
nop
nop
nop
nop
nop
sub $2643, %rsi
lea addresses_A_ht+0x19cc7, %rsi
lea addresses_D_ht+0x86c7, %rdi
nop
nop
dec %r10
mov $13, %rcx
rep movsl
and $54297, %rcx
lea addresses_WT_ht+0x784b, %rsi
lea addresses_UC_ht+0x5273, %rdi
nop
nop
nop
nop
nop
add $13843, %r11
mov $46, %rcx
rep movsw
nop
nop
nop
nop
nop
add $64698, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rdi

// Store
lea addresses_D+0x1184b, %rbx
nop
nop
add $46837, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%rbx)
nop
xor $25934, %rbx

// Load
mov $0x47, %rcx
sub $32628, %r11
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbx
cmp %rbp, %rbp

// Faulty Load
mov $0xcc7, %rbx
nop
nop
nop
nop
nop
and %r13, %r13
vmovntdqa (%rbx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r11
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'49': 6523, '48': 4394, '45': 2421, '46': 6118, '00': 2373}
48 46 48 49 49 48 00 46 45 46 46 49 48 49 00 49 45 46 46 46 46 49 48 49 48 49 49 46 46 46 48 49 00 00 49 45 46 46 48 00 45 46 46 46 46 49 49 48 48 49 48 48 48 49 45 45 49 49 45 45 00 46 49 48 48 49 00 00 45 45 46 49 48 49 49 46 46 48 00 49 46 46 46 49 48 48 49 49 46 48 00 49 49 49 45 46 46 46 48 48 49 48 00 45 45 00 46 46 48 48 00 00 49 49 45 46 46 49 49 48 49 49 00 45 46 45 46 48 49 00 49 45 00 46 46 46 46 48 48 49 49 45 46 46 46 49 48 49 46 45 46 48 48 00 49 49 45 46 46 46 48 00 45 45 46 46 46 00 49 49 45 46 46 48 00 46 49 46 46 46 46 48 48 49 45 46 45 46 46 46 46 46 49 48 49 49 45 48 48 49 48 49 46 46 49 49 48 48 49 48 49 00 49 46 46 48 48 48 00 00 45 45 46 48 48 48 46 45 48 49 48 00 49 45 46 48 49 49 00 49 45 45 45 46 46 46 48 49 48 49 49 00 45 49 45 46 48 49 00 48 00 49 49 46 46 46 46 46 49 49 00 48 48 49 49 45 46 46 46 49 49 49 48 49 00 00 00 00 48 49 49 49 46 46 46 49 48 49 49 49 45 46 46 46 48 49 48 00 00 00 00 46 46 48 49 48 49 49 49 45 46 46 49 48 48 48 00 49 49 49 46 00 46 48 00 49 49 49 49 46 46 46 48 49 48 00 49 49 49 00 48 49 45 46 45 46 46 46 48 48 48 00 49 49 46 46 46 49 49 48 00 49 49 46 46 49 48 48 49 49 49 49 45 00 46 49 48 48 00 49 45 46 46 48 48 49 49 49 49 49 45 46 46 49 48 48 48 49 46 46 46 48 48 49 49 45 46 00 46 46 48 49 49 45 46 46 46 46 48 49 49 48 49 49 46 46 46 49 48 49 49 45 48 49 49 48 49 49 49 46 46 46 48 49 48 49 46 46 46 46 46 46 48 48 48 48 49 49 46 48 48 00 00 49 00 00 46 46 48 48 49 48 48 00 49 46 46 49 49 49 49 45 49 00 48 49 45 45 46 46 00 48 00 49 49 46 45 46 46 48 48 00 49 48 49 00 49 46 46 46 46 48 48 49 49 45 46 46 46 46 49 49 48 49 49 49 49 45 45 46 49 49 48 48 49 49 49 49 45 46 46 46 46 48 48 48 00 49 45 46 46 46 46 48 49 49 00 46 46 45 00 46 48 48 48 49 49 46 46 46 46 00 00 49 49 45 46 46 46 46 48 00 00 00 49 49 49 45 46 49 48 49 48 49 49 00 49 49 49 49 45 46 46 48 49 48 49 46 46 49 48 00 00 49 46 46 49 48 46 46 00 48 48 49 49 49 46 45 45 46 45 46 48 48 49 00 49 45 46 48 48 49 49 48 48 49 00 46 46 48 49 49 00 46 46 46 49 48 49 49 49 46 46 49 48 49 00 49 45 45 46 49 48 48 48 49 00 45 45 46 48 49 49 49 49 49 46 46 46 48 00 00 45 46 46 46 49 48 49 49 49 49 45 45 00 46 49 49 48 49 49 49 45 46 45 46 49 48 48 00 49 46 46 46 46 48 49 48 49 46 45 46 49 00 00 49 49 45 45 46 45 46 46 46 48 48 49 49 49 46 46 46 49 48 49 46 45 46 46 46 46 48 48 49 49 49 45 45 45 46 00 46 48 49 49 48 48 48 00 49 45 46 46 48 49 49 49 45 46 46 46 48 48 49 49 49 49 45 46 48 49 00 49 49 45 45 46 46 49 48 49 49 49 46 46 45 46 46 48 49 48 48 49 48 00 49 45 46 00 46 48 48 48 49 49 45 45 46 46 49 48 49 49 45 46 48 46 48 49 48 49 49 45 00 46 48 48 00 49 00 49 00 49 45 46 48 49 48 49 49 45 46 48 48 48 49 00 49 45 45 48 48 49 45 00 46 46 49 48 49 49 48 49 45 00 46 46 46 49 49 49 00 46 45 48 48 49 48 00 00 49 46 45 46 48 49 48 49 45 46 46 46 48 48 00 49 49 49 49 49 46 46 46 48 49 00 00 00 46 45 46 48 49 48 49 48 49 48 49 46 49 49 49 45 46 45 46 49 48 49 48 49 49 45 46 48 46 00 49 45 45 46 46 46 48 48 49 00 45 00 46 46 48 48 49 49 45 00 46 48
*/

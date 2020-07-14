.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1e494, %rsi
lea addresses_normal_ht+0xb5ec, %rdi
nop
nop
cmp %rbp, %rbp
mov $77, %rcx
rep movsb
xor $39357, %rbp
lea addresses_UC_ht+0x1632c, %rsi
lea addresses_A_ht+0x19034, %rdi
nop
nop
nop
and $15284, %rdx
mov $82, %rcx
rep movsb
nop
nop
nop
and $2685, %rcx
lea addresses_WT_ht+0x12680, %rsi
lea addresses_D_ht+0x9684, %rdi
nop
add $8633, %rbx
mov $22, %rcx
rep movsl
xor $5428, %rsi
lea addresses_WC_ht+0x1ef74, %rsi
lea addresses_UC_ht+0x16fec, %rdi
nop
nop
nop
nop
cmp $5405, %r13
mov $87, %rcx
rep movsw
nop
nop
nop
inc %rdx
lea addresses_D_ht+0x27ec, %r13
nop
nop
nop
nop
cmp %rdi, %rdi
movups (%r13), %xmm4
vpextrq $1, %xmm4, %rcx
nop
nop
inc %rdi
lea addresses_WC_ht+0x1fec, %rdx
nop
nop
nop
nop
nop
add $25450, %r13
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%rdx)
nop
and $47206, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rbx
push %rcx
push %rdx

// Load
lea addresses_A+0x2dac, %rcx
nop
nop
nop
nop
nop
cmp $41576, %rbx
vmovups (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r11
nop
nop
nop
nop
dec %rdx

// Load
mov $0x1224370000000fec, %rdx
nop
nop
nop
nop
nop
cmp %r13, %r13
movups (%rdx), %xmm3
vpextrq $1, %xmm3, %r9
nop
nop
inc %rcx

// Load
lea addresses_D+0x4cec, %r11
nop
sub %r9, %r9
vmovups (%r11), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r10
nop
nop
nop
add $29235, %r13

// Store
lea addresses_UC+0x1fc2c, %rdx
nop
inc %rcx
mov $0x5152535455565758, %r9
movq %r9, (%rdx)
nop
nop
nop
nop
nop
inc %r13

// Faulty Load
lea addresses_US+0xefec, %rbx
nop
nop
nop
nop
cmp $34142, %rcx
vmovups (%rbx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r11
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'00': 15}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

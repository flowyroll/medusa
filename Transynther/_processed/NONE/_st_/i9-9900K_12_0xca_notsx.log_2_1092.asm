.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x82d5, %rbp
sub $58043, %rdx
movw $0x6162, (%rbp)
nop
nop
cmp $11065, %rbp
lea addresses_D_ht+0x19989, %r14
xor $31096, %r15
movb $0x61, (%r14)
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_normal_ht+0x10755, %rsi
lea addresses_WC_ht+0x114b5, %rdi
nop
and %r10, %r10
mov $90, %rcx
rep movsw
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x1d545, %rsi
lea addresses_D_ht+0x13f0f, %rdi
nop
nop
and %r9, %r9
mov $32, %rcx
rep movsq
add $53008, %r14
lea addresses_D_ht+0x156d5, %rsi
lea addresses_UC_ht+0x96d5, %rdi
nop
nop
nop
cmp %r9, %r9
mov $68, %rcx
rep movsb
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x1bad5, %rdi
nop
nop
nop
nop
nop
inc %r9
movb (%rdi), %dl
nop
nop
add %r14, %r14
lea addresses_A_ht+0x171e5, %rcx
nop
nop
nop
nop
nop
cmp %r10, %r10
mov (%rcx), %bp
nop
nop
nop
and $50804, %rbp
lea addresses_normal_ht+0x17cd5, %r14
nop
nop
cmp %rbp, %rbp
mov (%r14), %r9
nop
xor $26029, %r14
lea addresses_UC_ht+0x1065d, %r9
clflush (%r9)
nop
nop
nop
nop
nop
sub $47789, %r14
vmovups (%r9), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdi
add %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx

// Store
mov $0x7082450000000fb5, %rdi
nop
nop
nop
sub $5054, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movups %xmm4, (%rdi)
xor %rdx, %rdx

// Store
mov $0x3e9deb00000002d5, %rbp
sub %r11, %r11
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
vmovups %ymm0, (%rbp)
nop
nop
nop
and $42455, %r11

// Store
lea addresses_D+0x15f55, %r11
xor %rbp, %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm7
vmovntdq %ymm7, (%r11)
nop
nop
nop
dec %rdi

// Store
mov $0x5f5, %rdx
nop
add %r11, %r11
movl $0x51525354, (%rdx)
nop
nop
nop
nop
cmp %r13, %r13

// Store
mov $0xa71, %rcx
nop
nop
nop
nop
sub %rdi, %rdi
movw $0x5152, (%rcx)
nop
nop
xor %rcx, %rcx

// Load
lea addresses_A+0x1c2d5, %rbp
nop
nop
nop
nop
cmp %r11, %r11
vmovaps (%rbp), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbx
nop
nop
nop
cmp $51188, %rdx

// Faulty Load
lea addresses_A+0x1c2d5, %rbx
nop
nop
nop
nop
cmp %rbp, %rbp
mov (%rbx), %r11d
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'58': 2}
58 58
*/

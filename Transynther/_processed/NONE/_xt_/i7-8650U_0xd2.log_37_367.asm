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
lea addresses_normal_ht+0x1afcd, %rsi
lea addresses_WT_ht+0xadf5, %rdi
add %r13, %r13
mov $45, %rcx
rep movsl
nop
nop
nop
inc %rbp
lea addresses_UC_ht+0x12995, %r15
nop
nop
nop
nop
inc %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r15)
nop
nop
nop
nop
add $18055, %rsi
lea addresses_D_ht+0x17ed5, %rsi
lea addresses_D_ht+0x10709, %rdi
clflush (%rsi)
nop
nop
nop
dec %r9
mov $127, %rcx
rep movsb
nop
nop
add $33741, %r9
lea addresses_UC_ht+0x17435, %rsi
lea addresses_WT_ht+0x16cd5, %rdi
nop
nop
nop
and $27320, %r10
mov $52, %rcx
rep movsq
nop
nop
nop
cmp %r15, %r15
lea addresses_A_ht+0x17fa5, %r13
sub $1096, %rdi
movups (%r13), %xmm2
vpextrq $1, %xmm2, %rcx
nop
nop
nop
cmp $18378, %r13
lea addresses_WC_ht+0x18d5, %rsi
lea addresses_A_ht+0xf264, %rdi
clflush (%rsi)
xor $34537, %rbp
mov $18, %rcx
rep movsb
nop
cmp $13412, %rsi
lea addresses_normal_ht+0x2d5, %r15
nop
nop
xor %rsi, %rsi
and $0xffffffffffffffc0, %r15
vmovntdqa (%r15), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r13
nop
nop
nop
nop
nop
xor $56986, %rsi
lea addresses_D_ht+0x1cad5, %rsi
lea addresses_WT_ht+0xd3d5, %rdi
nop
nop
nop
add %r13, %r13
mov $85, %rcx
rep movsw
cmp $58705, %r15
lea addresses_normal_ht+0x6c55, %r10
add $20086, %rsi
movups (%r10), %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
nop
nop
nop
xor $43321, %r13
lea addresses_WC_ht+0x4fd5, %rsi
lea addresses_normal_ht+0x166d5, %rdi
nop
sub %rbp, %rbp
mov $51, %rcx
rep movsw
nop
nop
add %rbp, %rbp
lea addresses_UC_ht+0x1c475, %r15
clflush (%r15)
nop
sub $22307, %rsi
movl $0x61626364, (%r15)
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
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_normal+0x3ed5, %rbx
nop
nop
nop
nop
sub %rbp, %rbp
movups (%rbx), %xmm4
vpextrq $1, %xmm4, %rsi
sub $59473, %rsi

// REPMOV
lea addresses_D+0x1f6d5, %rsi
lea addresses_PSE+0x2425, %rdi
nop
nop
nop
inc %rbx
mov $68, %rcx
rep movsq
nop
nop
dec %rbx

// Store
lea addresses_normal+0x905, %rbp
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movb $0x51, (%rbp)
nop
nop
nop
nop
dec %rdi

// Store
mov $0x70989100000006d5, %rbp
add %rbx, %rbx
movw $0x5152, (%rbp)
nop
nop
sub $26356, %rbx

// Store
lea addresses_UC+0x645c, %rsi
and $1560, %rbp
movw $0x5152, (%rsi)
nop
nop
nop
add $55622, %r14

// Store
lea addresses_WT+0x78fd, %r11
nop
nop
and $33315, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
movups %xmm5, (%r11)
nop
sub $32529, %rdi

// Store
lea addresses_UC+0x6b91, %rcx
nop
nop
nop
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_WC+0x1953d, %r8
nop
and $4198, %rbx
movb $0x51, (%r8)
nop
nop
nop
nop
nop
sub $55733, %r14

// Faulty Load
lea addresses_normal+0x3ed5, %rcx
clflush (%rcx)
nop
nop
nop
nop
add %r8, %r8
mov (%rcx), %bp
lea oracles, %rdi
and $0xff, %rbp
shlq $12, %rbp
mov (%rdi,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': True, 'NT': True, 'congruent': 5, 'same': False}}
{'34': 37}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/

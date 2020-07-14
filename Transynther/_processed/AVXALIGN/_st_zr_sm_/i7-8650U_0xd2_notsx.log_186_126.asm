.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x3c70, %r11
nop
nop
nop
and %rbp, %rbp
movb (%r11), %r9b
sub %r15, %r15
lea addresses_normal_ht+0x4326, %rbx
nop
nop
nop
nop
nop
cmp $46137, %r12
and $0xffffffffffffffc0, %rbx
vmovaps (%rbx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r9
sub $9079, %r11
lea addresses_WT_ht+0x1b3eb, %rbx
nop
xor %r15, %r15
vmovups (%rbx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r9
nop
nop
nop
cmp $42203, %rdi
lea addresses_UC_ht+0x91a6, %r15
clflush (%r15)
nop
nop
nop
nop
and $43386, %rdi
movl $0x61626364, (%r15)
add $28155, %r15
lea addresses_WT_ht+0x5da6, %r15
nop
nop
nop
nop
nop
sub $22543, %r12
movb (%r15), %bl
sub %rbp, %rbp
lea addresses_WC_ht+0x3d26, %rsi
lea addresses_UC_ht+0xac26, %rdi
nop
nop
nop
inc %r15
mov $74, %rcx
rep movsb
nop
nop
nop
inc %rcx
lea addresses_A_ht+0x198c6, %rsi
lea addresses_A_ht+0x16c09, %rdi
nop
nop
add $1287, %r12
mov $121, %rcx
rep movsw
nop
nop
nop
xor %r11, %r11
lea addresses_WC_ht+0x1ea26, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
and $6288, %rbp
movb $0x61, (%rcx)
nop
add $39925, %rsi
lea addresses_UC_ht+0x3f66, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
and $52400, %rbx
movups (%rsi), %xmm0
vpextrq $0, %xmm0, %r11
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x11e46, %r9
clflush (%r9)
nop
add %rbp, %rbp
movl $0x61626364, (%r9)
nop
nop
sub $24117, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdx

// Store
lea addresses_D+0x8b84, %rdx
and $6590, %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
movups %xmm2, (%rdx)
nop
nop
nop
nop
nop
and $41353, %r15

// Store
lea addresses_normal+0x20de, %r10
nop
nop
nop
xor $54676, %rdx
movw $0x5152, (%r10)
nop
nop
nop
nop
cmp $61546, %rdx

// Load
lea addresses_A+0x1cca6, %rcx
nop
nop
nop
and $45719, %r15
mov (%rcx), %r12w
nop
cmp $35358, %rcx

// Store
mov $0xa32, %rcx
and %r9, %r9
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movups %xmm4, (%rcx)
cmp $61258, %r9

// Store
lea addresses_UC+0x1bce6, %r8
clflush (%r8)
nop
nop
nop
and $38112, %r10
mov $0x5152535455565758, %r15
movq %r15, (%r8)
nop
nop
nop
nop
nop
cmp %r10, %r10

// Store
mov $0x6a9e770000000926, %rdx
cmp %r15, %r15
mov $0x5152535455565758, %r9
movq %r9, %xmm5
movntdq %xmm5, (%rdx)
nop
nop
nop
nop
nop
xor $21192, %rdx

// Store
lea addresses_normal+0x4f26, %r8
nop
nop
nop
nop
nop
and %r12, %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm6
movups %xmm6, (%r8)
nop
and $10705, %rcx

// Store
mov $0x51ceb30000000b26, %r8
nop
dec %r10
movw $0x5152, (%r8)
and %r8, %r8

// Faulty Load
mov $0x51ceb30000000b26, %r12
and %rcx, %rcx
mov (%r12), %r8d
lea oracles, %r9
and $0xff, %r8
shlq $12, %r8
mov (%r9,%r8,1), %r8
pop %rdx
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'52': 79, '00': 107}
52 52 52 00 52 52 52 00 52 52 00 00 00 52 52 00 52 52 00 00 00 52 00 52 52 52 52 52 00 00 00 00 00 00 52 00 00 52 00 52 52 00 00 00 00 52 52 52 00 00 52 00 00 00 00 52 52 52 52 00 00 00 00 00 00 00 52 00 52 00 00 00 00 52 52 00 00 00 00 00 52 52 00 00 52 00 00 52 52 00 00 00 52 00 00 00 52 52 00 00 52 52 52 00 52 00 52 52 00 00 52 00 52 00 00 52 00 00 52 52 52 00 00 52 52 52 00 00 52 00 52 52 52 00 00 00 52 00 00 00 00 52 00 00 52 00 00 00 52 00 00 52 52 00 00 00 52 00 00 00 00 00 00 52 52 00 00 52 00 00 00 00 52 52 00 00 00 52 52 52 00 52 52 52 00 00
*/

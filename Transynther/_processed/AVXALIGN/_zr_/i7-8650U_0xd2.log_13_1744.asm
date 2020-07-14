.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x6e01, %rsi
lea addresses_WC_ht+0x10bcf, %rdi
nop
nop
nop
nop
xor %r14, %r14
mov $118, %rcx
rep movsw
nop
nop
nop
dec %r11
lea addresses_normal_ht+0x17601, %r10
clflush (%r10)
nop
nop
nop
cmp $9504, %r8
mov $0x6162636465666768, %r14
movq %r14, %xmm7
movups %xmm7, (%r10)
nop
nop
nop
nop
add %r14, %r14
lea addresses_UC_ht+0x1dac1, %rsi
lea addresses_WC_ht+0x60c1, %rdi
nop
nop
nop
cmp %r12, %r12
mov $109, %rcx
rep movsw
cmp %r12, %r12
lea addresses_UC_ht+0xc201, %r14
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x4c71, %rsi
lea addresses_normal_ht+0x13b91, %rdi
and $15120, %r11
mov $114, %rcx
rep movsl
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x18201, %rsi
lea addresses_UC_ht+0x1401, %rdi
clflush (%rdi)
nop
nop
nop
nop
and %r10, %r10
mov $88, %rcx
rep movsq
nop
nop
add %r11, %r11
lea addresses_WC_ht+0x10a69, %rsi
lea addresses_UC_ht+0x1ccd4, %rdi
and $1866, %r10
mov $3, %rcx
rep movsl
nop
add %rdi, %rdi
lea addresses_UC_ht+0x2f6d, %r12
add $23662, %r14
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
xor $21611, %r8
lea addresses_UC_ht+0x1b601, %r10
nop
nop
xor %r11, %r11
vmovups (%r10), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r12
dec %rcx
lea addresses_D_ht+0x18e01, %r10
nop
nop
nop
nop
nop
add %r14, %r14
movl $0x61626364, (%r10)
nop
nop
nop
nop
nop
xor $22636, %rdi
lea addresses_normal_ht+0xa4e1, %rsi
nop
nop
nop
xor $16520, %rcx
movups (%rsi), %xmm0
vpextrq $1, %xmm0, %r12
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x3601, %rsi
lea addresses_WT_ht+0x8001, %rdi
nop
nop
and $22341, %r14
mov $60, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x1d001, %rdi
nop
nop
inc %rcx
mov (%rdi), %r8w
nop
nop
nop
nop
inc %r12
lea addresses_A_ht+0x1b701, %r11
nop
nop
nop
and %rcx, %rcx
movb (%r11), %r14b
nop
nop
nop
sub $8502, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %r9
push %rax
push %rcx
push %rsi

// Store
lea addresses_PSE+0x11401, %r12
nop
nop
nop
inc %r9
movb $0x51, (%r12)
sub $50436, %rcx

// Load
lea addresses_PSE+0x5e01, %r10
nop
nop
add %r8, %r8
mov (%r10), %cx
nop
cmp %r8, %r8

// Store
mov $0xac1c600000003f1, %rax
nop
nop
nop
inc %rsi
movb $0x51, (%rax)
nop
nop
cmp $17954, %r10

// Store
lea addresses_PSE+0x15cd, %rsi
nop
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm0
movups %xmm0, (%rsi)
nop
nop
nop
add $55207, %r12

// Store
lea addresses_PSE+0xef01, %r8
nop
and $59427, %r12
movw $0x5152, (%r8)
nop
nop
nop
and %rax, %rax

// Load
lea addresses_UC+0xf341, %rcx
clflush (%rcx)
nop
sub %r8, %r8
mov (%rcx), %r10d
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_normal+0xa241, %r10
nop
nop
cmp %r9, %r9
mov $0x5152535455565758, %r8
movq %r8, %xmm7
movups %xmm7, (%r10)
nop
nop
nop
nop
nop
cmp $20276, %rsi

// Store
mov $0x64e3820000000f39, %rcx
and $44431, %r10
movl $0x51525354, (%rcx)
nop
nop
nop
add %r8, %r8

// Store
lea addresses_WT+0x14601, %r10
nop
add %r9, %r9
mov $0x5152535455565758, %rcx
movq %rcx, (%r10)
nop
nop
nop
nop
cmp $30494, %rcx

// Store
lea addresses_normal+0xa601, %r10
nop
nop
nop
nop
nop
dec %rcx
movw $0x5152, (%r10)
dec %r10

// Faulty Load
lea addresses_A+0x15601, %r12
xor $25978, %rax
movntdqa (%r12), %xmm2
vpextrq $1, %xmm2, %r10
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rsi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'00': 13}
00 00 00 00 00 00 00 00 00 00 00 00 00
*/

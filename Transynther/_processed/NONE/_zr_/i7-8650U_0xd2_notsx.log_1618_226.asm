.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xeca7, %rax
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov (%rax), %r12w
nop
nop
nop
cmp $11339, %rbx
lea addresses_A_ht+0xb407, %rdi
dec %rcx
mov (%rdi), %rsi
nop
dec %rax
lea addresses_WT_ht+0xea07, %rsi
lea addresses_D_ht+0x5c07, %rdi
add $58948, %r15
mov $103, %rcx
rep movsw
nop
dec %rsi
lea addresses_A_ht+0xc507, %rcx
nop
nop
nop
add $58535, %rax
mov (%rcx), %r15w
nop
nop
inc %r15
lea addresses_normal_ht+0x1d407, %rsi
lea addresses_A_ht+0xb047, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and $2075, %rbx
mov $78, %rcx
rep movsq
nop
nop
nop
nop
and $11215, %rcx
lea addresses_D_ht+0x1e507, %rdi
nop
nop
nop
nop
xor %rbp, %rbp
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x4807, %rsi
lea addresses_A_ht+0x17147, %rdi
nop
and %rbx, %rbx
mov $57, %rcx
rep movsl
nop
xor $55124, %rsi
lea addresses_WT_ht+0x1c467, %rdi
nop
sub $43132, %rax
mov (%rdi), %ecx
nop
nop
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x4407, %rsi
lea addresses_A_ht+0x19d07, %rdi
nop
nop
nop
and %rbx, %rbx
mov $19, %rcx
rep movsw
nop
nop
nop
nop
and $30377, %r15
lea addresses_WT_ht+0x73a7, %rbx
nop
nop
add $33644, %rsi
movw $0x6162, (%rbx)
nop
sub $53212, %rax
lea addresses_A_ht+0x5b07, %rcx
clflush (%rcx)
nop
nop
nop
add %rsi, %rsi
movb (%rcx), %r12b
nop
nop
nop
nop
add %rax, %rax
lea addresses_normal_ht+0xce67, %r15
clflush (%r15)
nop
nop
nop
inc %rdi
movb (%r15), %r12b
nop
inc %rbx
lea addresses_normal_ht+0x1c0e7, %rsi
nop
inc %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x136eb, %rcx
inc %rdi
movb (%rcx), %al
nop
nop
and %rax, %rax
lea addresses_WC_ht+0x5307, %rdi
nop
sub $49224, %rbx
mov $0x6162636465666768, %r15
movq %r15, %xmm0
movups %xmm0, (%rdi)
nop
add %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rbp
push %rbx
push %rcx

// Store
lea addresses_D+0x1b107, %r13
sub $14001, %r10
movl $0x51525354, (%r13)
nop
nop
nop
nop
nop
and $60414, %rcx

// Store
lea addresses_PSE+0xd507, %r10
nop
nop
nop
sub $9526, %r9
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
movups %xmm7, (%r10)
nop
nop
nop
xor %r11, %r11

// Load
lea addresses_PSE+0xbd07, %r10
nop
nop
nop
nop
nop
add $52474, %rbx
movb (%r10), %r9b
nop
nop
nop
nop
dec %rbx

// Store
lea addresses_WT+0x14107, %r11
nop
nop
nop
and $25159, %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movups %xmm5, (%r11)
nop
cmp $50771, %rbp

// Store
lea addresses_D+0x11417, %rbp
cmp $13671, %r10
mov $0x5152535455565758, %r11
movq %r11, (%rbp)
nop
nop
nop
sub %r11, %r11

// Load
lea addresses_PSE+0x15197, %r9
nop
nop
nop
inc %rbx
movups (%r9), %xmm7
vpextrq $0, %xmm7, %r11
nop
nop
cmp %r10, %r10

// Load
lea addresses_WC+0xf187, %rcx
nop
nop
nop
nop
xor $38013, %rbp
mov (%rcx), %r10w
nop
nop
and $2999, %rcx

// Load
lea addresses_PSE+0xd507, %r11
dec %r9
movb (%r11), %cl
nop
nop
cmp $16000, %r10

// Store
lea addresses_D+0x8647, %r11
nop
nop
nop
and $57061, %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm1
movups %xmm1, (%r11)
nop
nop
nop
nop
nop
add %r9, %r9

// Store
lea addresses_A+0x1768b, %rbx
add %rbp, %rbp
movb $0x51, (%rbx)
inc %rbp

// Store
lea addresses_normal+0x16fc7, %rcx
nop
nop
nop
lfence
mov $0x5152535455565758, %r9
movq %r9, %xmm4
vmovups %ymm4, (%rcx)
nop
inc %rcx

// Store
lea addresses_normal+0x17909, %r13
clflush (%r13)
nop
nop
nop
nop
cmp $8733, %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
movups %xmm1, (%r13)
nop
dec %rcx

// Store
mov $0x738, %rbp
nop
add $29421, %r11
mov $0x5152535455565758, %r10
movq %r10, (%rbp)
nop
nop
xor %rcx, %rcx

// Faulty Load
lea addresses_PSE+0xd507, %rcx
nop
nop
nop
and $11628, %r11
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r10
lea oracles, %r11
and $0xff, %r10
shlq $12, %r10
mov (%r11,%r10,1), %r10
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'00': 1618}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

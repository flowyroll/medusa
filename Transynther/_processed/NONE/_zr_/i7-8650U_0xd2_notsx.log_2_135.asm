.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xc6bd, %rbp
nop
dec %rdi
and $0xffffffffffffffc0, %rbp
movaps (%rbp), %xmm6
vpextrq $0, %xmm6, %r14
nop
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0x182bd, %r14
and %rbx, %rbx
mov $0x6162636465666768, %r13
movq %r13, (%r14)
nop
xor $14285, %r14
lea addresses_UC_ht+0xb73d, %r14
nop
and %r11, %r11
mov (%r14), %r13w
inc %rbx
lea addresses_UC_ht+0x1003d, %r13
nop
nop
nop
nop
nop
and $61394, %r10
movups (%r13), %xmm3
vpextrq $0, %xmm3, %rbp
nop
nop
nop
xor %r10, %r10
lea addresses_UC_ht+0x198bd, %rbp
nop
xor $28212, %r13
mov (%rbp), %r10d
nop
nop
nop
add %r14, %r14
lea addresses_WC_ht+0xeafd, %r13
nop
nop
nop
nop
xor $10715, %r11
mov (%r13), %r10d
nop
nop
cmp $37745, %r14
lea addresses_normal_ht+0x161fd, %rsi
lea addresses_WC_ht+0x1b7d5, %rdi
nop
nop
nop
nop
nop
inc %r11
mov $66, %rcx
rep movsw
dec %rcx
lea addresses_normal_ht+0x1735d, %rbp
nop
nop
nop
nop
xor %r11, %r11
movl $0x61626364, (%rbp)
nop
nop
xor $60187, %r13
lea addresses_UC_ht+0xa83d, %r13
inc %r11
movl $0x61626364, (%r13)
cmp %rcx, %rcx
lea addresses_D_ht+0xb0ed, %rsi
lea addresses_D_ht+0x11c3d, %rdi
nop
nop
and $49922, %r13
mov $7, %rcx
rep movsb
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x12d75, %rsi
lea addresses_D_ht+0x927d, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $49677, %r13
mov $109, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_normal_ht+0x1333d, %rsi
lea addresses_D_ht+0x1d13d, %rdi
nop
nop
sub $54701, %rbx
mov $36, %rcx
rep movsq
nop
nop
nop
dec %rbp
lea addresses_D_ht+0x683d, %rsi
lea addresses_WC_ht+0x13d3d, %rdi
nop
sub %r10, %r10
mov $40, %rcx
rep movsb
nop
nop
nop
nop
sub %r13, %r13
lea addresses_D_ht+0x1543d, %rsi
lea addresses_WC_ht+0x77d, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub $33479, %r10
mov $87, %rcx
rep movsl
sub %rbx, %rbx
lea addresses_normal_ht+0x17efd, %rsi
nop
nop
nop
nop
inc %r11
vmovups (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
nop
nop
nop
nop
nop
and $25625, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x17cad, %rbp
and %rdx, %rdx
mov $0x5152535455565758, %r13
movq %r13, %xmm7
movups %xmm7, (%rbp)
nop
nop
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_WC+0x59bd, %r9
nop
nop
nop
add $50562, %r14
movl $0x51525354, (%r9)
nop
cmp %r14, %r14

// REPMOV
lea addresses_A+0x14426, %rsi
lea addresses_WC+0xfb1d, %rdi
nop
dec %rbp
mov $97, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rdi, %rdi

// REPMOV
lea addresses_US+0x15dbd, %rsi
lea addresses_A+0x1cf3d, %rdi
nop
nop
nop
nop
cmp %r13, %r13
mov $16, %rcx
rep movsb
nop
nop
nop
sub %r9, %r9

// Store
lea addresses_US+0xf1ed, %r14
nop
nop
dec %rdi
mov $0x5152535455565758, %rdx
movq %rdx, (%r14)
nop
nop
nop
cmp $38134, %r13

// Store
lea addresses_A+0x1edad, %rsi
nop
xor $47481, %rdi
movb $0x51, (%rsi)
nop
and %rcx, %rcx

// Faulty Load
lea addresses_A+0x1cf3d, %rcx
add %r13, %r13
movups (%rcx), %xmm0
vpextrq $1, %xmm0, %r14
lea oracles, %r9
and $0xff, %r14
shlq $12, %r14
mov (%r9,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_US', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'00': 2}
00 00
*/

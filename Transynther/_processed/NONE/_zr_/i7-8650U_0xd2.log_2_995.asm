.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x16f6d, %rdi
nop
nop
nop
nop
nop
sub %rsi, %rsi
movb $0x61, (%rdi)
nop
nop
nop
xor %r10, %r10
lea addresses_A_ht+0x16dad, %rsi
lea addresses_A_ht+0x8c7, %rdi
and %rbx, %rbx
mov $26, %rcx
rep movsb
nop
nop
nop
nop
and $29513, %rbx
lea addresses_WC_ht+0x6099, %rbx
nop
nop
cmp $38507, %rbp
mov (%rbx), %r15w
nop
nop
nop
nop
nop
add $16083, %rbp
lea addresses_UC_ht+0x139fd, %rbx
nop
dec %rbp
movups (%rbx), %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0xb66d, %rsi
nop
and $16985, %rbp
movl $0x61626364, (%rsi)
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x816d, %r15
nop
nop
sub %rcx, %rcx
movb $0x61, (%r15)
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x13fed, %rcx
nop
xor $8709, %rdi
mov (%rcx), %r15d
nop
nop
nop
nop
and %r10, %r10
lea addresses_A_ht+0x18bed, %rdi
nop
nop
nop
nop
nop
inc %rbp
mov (%rdi), %r15
add %rsi, %rsi
lea addresses_WC_ht+0x1827d, %rsi
nop
nop
nop
nop
and $46221, %r15
movl $0x61626364, (%rsi)
nop
sub %r10, %r10
lea addresses_A_ht+0xcaed, %rdi
nop
nop
nop
nop
sub %rcx, %rcx
movb $0x61, (%rdi)
xor $20623, %rsi
lea addresses_normal_ht+0x51e9, %rsi
lea addresses_D_ht+0x1c5cd, %rdi
nop
nop
nop
add $22655, %r9
mov $85, %rcx
rep movsl
nop
sub $58220, %r9
lea addresses_D_ht+0x696d, %rsi
lea addresses_UC_ht+0x1945f, %rdi
and %r9, %r9
mov $17, %rcx
rep movsw
nop
nop
cmp $21825, %rbx
lea addresses_D_ht+0xf96d, %rsi
lea addresses_normal_ht+0xd96d, %rdi
clflush (%rsi)
clflush (%rdi)
inc %r9
mov $14, %rcx
rep movsl
inc %r9
lea addresses_A_ht+0x1bddd, %rdi
nop
nop
nop
nop
add $62432, %rsi
mov (%rdi), %ecx
and $48970, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0xfeed, %rbp
add %rsi, %rsi
mov $0x5152535455565758, %r12
movq %r12, (%rbp)
nop
nop
nop
xor %rbp, %rbp

// REPMOV
lea addresses_RW+0xb5e2, %rsi
mov $0xb5d, %rdi
nop
and $21652, %rbp
mov $81, %rcx
rep movsb
nop
nop
sub $4440, %r11

// Faulty Load
lea addresses_WC+0x1316d, %r10
nop
inc %rdx
vmovups (%r10), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbp
lea oracles, %rsi
and $0xff, %rbp
shlq $12, %rbp
mov (%rsi,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_P', 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': True, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'00': 2}
00 00
*/

.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xd132, %rdx
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
movups %xmm2, (%rdx)
nop
nop
nop
add $451, %rsi
lea addresses_A_ht+0xb1f2, %r8
nop
nop
cmp %r9, %r9
movb $0x61, (%r8)
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x14672, %rdi
nop
nop
xor %rbp, %rbp
movw $0x6162, (%rdi)
nop
nop
cmp $25848, %rbp
lea addresses_WT_ht+0x18872, %r8
nop
add $14381, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r8)
nop
nop
nop
nop
nop
cmp $16480, %r8
lea addresses_UC_ht+0xb5f2, %r9
nop
nop
and $59226, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%r9)
inc %rcx
lea addresses_WT_ht+0x15c74, %rdx
cmp $20093, %r8
mov $0x6162636465666768, %rsi
movq %rsi, (%rdx)
nop
nop
nop
inc %r8
lea addresses_A_ht+0x3000, %rsi
lea addresses_WT_ht+0x17f7a, %rdi
nop
sub %r11, %r11
mov $6, %rcx
rep movsb
and %r9, %r9
lea addresses_A_ht+0xc13c, %rsi
lea addresses_WC_ht+0x18482, %rdi
add %r11, %r11
mov $97, %rcx
rep movsl
nop
dec %rsi
lea addresses_D_ht+0x1a9d2, %rsi
nop
nop
sub $12413, %r9
movups (%rsi), %xmm4
vpextrq $0, %xmm4, %rbp
nop
nop
nop
nop
xor %r11, %r11
lea addresses_A_ht+0x7cf2, %r8
nop
nop
nop
nop
nop
dec %r11
and $0xffffffffffffffc0, %r8
movntdqa (%r8), %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
nop
nop
add $62116, %rdx
lea addresses_A_ht+0x1df2, %rsi
lea addresses_D_ht+0x19df2, %rdi
nop
nop
and %r8, %r8
mov $52, %rcx
rep movsq
nop
dec %rcx
lea addresses_A_ht+0x6662, %rsi
lea addresses_WT_ht+0x150de, %rdi
xor $51195, %r11
mov $41, %rcx
rep movsb
nop
xor %r8, %r8
lea addresses_normal_ht+0x18f32, %r8
nop
nop
nop
nop
nop
add %r11, %r11
and $0xffffffffffffffc0, %r8
movntdqa (%r8), %xmm2
vpextrq $1, %xmm2, %rcx
nop
dec %rsi
lea addresses_A_ht+0x131f2, %rsi
lea addresses_WC_ht+0x77f2, %rdi
nop
nop
cmp $51176, %rdx
mov $91, %rcx
rep movsw
nop
nop
and $24090, %rbp
lea addresses_UC_ht+0x8132, %rdx
nop
nop
nop
nop
add $47648, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
and $0xffffffffffffffc0, %rdx
movntdq %xmm7, (%rdx)
nop
nop
cmp %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rbp
push %rbx
push %rcx

// Store
lea addresses_A+0x140f2, %rbp
nop
nop
nop
inc %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm1
vmovups %ymm1, (%rbp)
nop
nop
cmp $31088, %r10

// Store
lea addresses_normal+0x68f2, %r8
nop
nop
nop
nop
nop
cmp $2066, %r11
movl $0x51525354, (%r8)
nop
nop
nop
nop
cmp %r10, %r10

// Store
mov $0xef2, %rbx
sub %r10, %r10
mov $0x5152535455565758, %r11
movq %r11, %xmm7
movups %xmm7, (%rbx)
nop
nop
nop
nop
nop
cmp %rbx, %rbx

// Load
lea addresses_RW+0xd32, %r14
clflush (%r14)
nop
nop
nop
cmp $53392, %rcx
vmovups (%r14), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r10
nop
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_A+0x16ff2, %rbp
nop
nop
nop
nop
add $42261, %r11
mov $0x5152535455565758, %r10
movq %r10, (%rbp)
cmp $34486, %rbx

// Store
lea addresses_WT+0x145f2, %r14
nop
nop
nop
nop
xor %r11, %r11
movl $0x51525354, (%r14)
nop
inc %rbp

// Store
lea addresses_PSE+0x1f5f2, %r8
nop
nop
nop
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %r11
movq %r11, (%r8)
sub $58215, %rcx

// Store
lea addresses_RW+0xd1ca, %rbp
clflush (%rbp)
nop
sub $2309, %r14
movl $0x51525354, (%rbp)
cmp $13426, %rbp

// Faulty Load
lea addresses_A+0x155f2, %rbp
nop
nop
nop
inc %r10
vmovups (%rbp), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r8
lea oracles, %r11
and $0xff, %r8
shlq $12, %r8
mov (%r11,%r8,1), %r8
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': True, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': True, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}, 'dst': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'00': 2}
00 00
*/

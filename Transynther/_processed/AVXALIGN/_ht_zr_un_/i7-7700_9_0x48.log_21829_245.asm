.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x15c72, %r11
nop
nop
nop
nop
and $7934, %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
and $0xffffffffffffffc0, %r11
movaps %xmm1, (%r11)
inc %r15
lea addresses_D_ht+0xefb2, %r9
nop
nop
nop
nop
xor %rcx, %rcx
movl $0x61626364, (%r9)
xor %r12, %r12
lea addresses_WT_ht+0x1e992, %rsi
lea addresses_UC_ht+0x4bb6, %rdi
nop
nop
nop
nop
inc %rax
mov $127, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $2851, %r15
lea addresses_WC_ht+0x1c72, %rsi
lea addresses_WT_ht+0x144f2, %rdi
nop
nop
nop
inc %r9
mov $55, %rcx
rep movsl
xor $7123, %r15
lea addresses_WC_ht+0xa72, %rsi
nop
nop
nop
add %rax, %rax
movb (%rsi), %r11b
cmp $58490, %rsi
lea addresses_normal_ht+0x4bda, %rdi
nop
nop
nop
nop
nop
and $44725, %rax
movb $0x61, (%rdi)
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x17072, %rax
nop
nop
add $20055, %r12
movl $0x61626364, (%rax)
nop
add %rax, %rax
lea addresses_WT_ht+0x13512, %rax
clflush (%rax)
nop
nop
nop
and $56520, %r9
movb $0x61, (%rax)
nop
cmp %rax, %rax
lea addresses_UC_ht+0x1c72, %rax
clflush (%rax)
nop
add %rsi, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm3
vmovups %ymm3, (%rax)
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x1c072, %rsi
nop
nop
nop
nop
and %r15, %r15
mov $0x6162636465666768, %r12
movq %r12, %xmm3
movups %xmm3, (%rsi)
nop
nop
and %r9, %r9
lea addresses_WT_ht+0x17519, %rdi
nop
nop
nop
nop
nop
and $2840, %r9
mov (%rdi), %r12w
add $9672, %rax
lea addresses_A_ht+0xa232, %r12
and $33310, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r12)
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x707a, %rcx
nop
nop
cmp %r9, %r9
mov (%rcx), %r12
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_A_ht+0x10872, %r15
nop
nop
nop
nop
xor %r11, %r11
mov (%r15), %cx
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x9e72, %r12
xor %rsi, %rsi
and $0xffffffffffffffc0, %r12
vmovaps (%r12), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r15
nop
nop
sub %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rdx

// Load
mov $0xa72, %r12
nop
nop
nop
nop
inc %rdx
vmovups (%r12), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r15
nop
nop
nop
nop
xor $5598, %r12

// Store
lea addresses_normal+0xb98a, %r13
nop
nop
add $21309, %rcx
mov $0x5152535455565758, %rax
movq %rax, (%r13)
nop
add %rdx, %rdx

// Store
lea addresses_RW+0x15392, %rdx
nop
nop
nop
nop
nop
and $44194, %rdi
movw $0x5152, (%rdx)
nop
nop
nop
inc %r15

// Store
lea addresses_D+0x16972, %r12
nop
cmp %rdx, %rdx
movl $0x51525354, (%r12)
nop
nop
nop
nop
nop
cmp $61066, %rdx

// Store
lea addresses_WC+0x1d32, %r13
nop
nop
cmp $16104, %rax
mov $0x5152535455565758, %rdx
movq %rdx, (%r13)
nop
nop
nop
nop
dec %rdi

// Store
lea addresses_A+0xb07e, %rcx
nop
sub $28287, %rdx
mov $0x5152535455565758, %rax
movq %rax, %xmm4
movups %xmm4, (%rcx)
nop
cmp %r15, %r15

// Load
lea addresses_WT+0x1334, %rcx
nop
nop
nop
cmp %rdi, %rdi
mov (%rcx), %eax
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_A+0x1e472, %r15
nop
nop
nop
nop
nop
add %rdi, %rdi
movw $0x5152, (%r15)
nop
nop
sub $9955, %rdi

// Faulty Load
lea addresses_A+0x1e472, %rcx
add %rax, %rax
vmovntdqa (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r12
lea oracles, %rdx
and $0xff, %r12
shlq $12, %r12
mov (%rdx,%r12,1), %r12
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': True, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 10, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'08': 1, '87': 3, 'ac': 1, '06': 1, '88': 2, '00': 21809, '02': 2, '49': 3, 'c5': 4, 'ff': 2, '25': 1}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 c5 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

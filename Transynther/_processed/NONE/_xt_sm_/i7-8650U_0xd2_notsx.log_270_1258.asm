.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1e12a, %rdx
clflush (%rdx)
add %r15, %r15
movl $0x61626364, (%rdx)
and %rbx, %rbx
lea addresses_WT_ht+0x180aa, %r8
nop
nop
nop
nop
nop
cmp %r11, %r11
vmovups (%r8), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbx
nop
nop
cmp $7707, %r8
lea addresses_normal_ht+0xf906, %r15
clflush (%r15)
nop
nop
nop
nop
inc %rsi
mov (%r15), %r11w
nop
nop
nop
nop
and $65122, %r15
lea addresses_WC_ht+0x1292a, %r11
nop
nop
nop
cmp %rdx, %rdx
mov (%r11), %r10
nop
nop
nop
inc %rsi
lea addresses_A_ht+0x992a, %rdx
nop
nop
nop
nop
nop
and %rsi, %rsi
movb $0x61, (%rdx)
add $57116, %r8
lea addresses_A_ht+0x1292a, %r15
add $21403, %r10
mov (%r15), %ebx
nop
cmp $13818, %rsi
lea addresses_normal_ht+0x8b8a, %rsi
lea addresses_UC_ht+0x1232a, %rdi
nop
nop
cmp $62902, %r10
mov $7, %rcx
rep movsq
nop
nop
nop
add %rdx, %rdx
lea addresses_D_ht+0xe72a, %r11
nop
nop
nop
nop
nop
cmp $23218, %r8
movw $0x6162, (%r11)
xor $15293, %rsi
lea addresses_WT_ht+0x21c, %rsi
lea addresses_WC_ht+0x14baa, %rdi
nop
nop
nop
sub %rdx, %rdx
mov $111, %rcx
rep movsq
nop
nop
nop
nop
xor $64468, %rcx
lea addresses_WC_ht+0xddda, %r15
nop
nop
nop
add $54025, %rcx
mov (%r15), %dx
nop
nop
and %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rdi

// Store
lea addresses_A+0x1e366, %rax
nop
nop
sub $4270, %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
movups %xmm6, (%rax)
nop
cmp %rcx, %rcx

// Store
lea addresses_D+0x1a12a, %rdi
xor %rcx, %rcx
mov $0x5152535455565758, %r9
movq %r9, (%rdi)
nop
nop
sub $37402, %rax

// Store
lea addresses_D+0x1a12a, %r13
xor %rdi, %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm5
vmovups %ymm5, (%r13)
nop
nop
nop
nop
nop
xor %r10, %r10

// Store
lea addresses_RW+0xed2a, %r9
nop
nop
add $20206, %rbp
movl $0x51525354, (%r9)
nop
nop
and $17868, %rax

// Load
lea addresses_WT+0x1b9fa, %rbp
nop
nop
add $54068, %rcx
movups (%rbp), %xmm2
vpextrq $0, %xmm2, %rax
nop
nop
nop
nop
inc %rax

// Load
lea addresses_WC+0x3baa, %r9
nop
dec %rax
mov (%r9), %r10
nop
inc %r9

// Store
lea addresses_PSE+0xc030, %rcx
nop
nop
nop
nop
dec %rdi
movb $0x51, (%rcx)
cmp %rdi, %rdi

// Store
lea addresses_WT+0x12cca, %rax
xor %rcx, %rcx
movb $0x51, (%rax)
nop
dec %r9

// Store
mov $0xbec, %r9
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %rbp
movq %rbp, (%r9)
nop
nop
nop
nop
nop
and %r13, %r13

// Store
lea addresses_WT+0x1652a, %r9
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r10
movq %r10, (%r9)
nop
nop
nop
dec %rcx

// Faulty Load
lea addresses_D+0x1a12a, %r13
clflush (%r13)
nop
nop
nop
nop
and $34093, %rcx
mov (%r13), %rax
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'58': 270}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/

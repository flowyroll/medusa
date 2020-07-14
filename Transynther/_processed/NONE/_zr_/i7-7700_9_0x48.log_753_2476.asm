.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x11a9d, %rsi
lea addresses_WT_ht+0xc51d, %rdi
nop
nop
nop
nop
add $37873, %rdx
mov $8, %rcx
rep movsb
nop
cmp $34018, %r9
lea addresses_D_ht+0x19d1d, %rdi
xor %r13, %r13
movb (%rdi), %bl
nop
nop
nop
nop
nop
add $33455, %rbx
lea addresses_UC_ht+0x1ed1d, %rcx
clflush (%rcx)
nop
nop
nop
cmp %rdi, %rdi
mov (%rcx), %rbx
nop
nop
nop
nop
nop
sub $3047, %rdi
lea addresses_A_ht+0x14b1d, %rsi
nop
nop
xor %r13, %r13
movw $0x6162, (%rsi)
nop
nop
nop
sub %rbx, %rbx
lea addresses_A_ht+0x13f9d, %rdx
nop
nop
nop
nop
sub $43764, %rsi
movups (%rdx), %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0x3e1d, %r9
nop
add $22407, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
and $0xffffffffffffffc0, %r9
vmovaps %ymm1, (%r9)
nop
cmp $9704, %rsi
lea addresses_normal_ht+0xf49d, %rbx
nop
nop
inc %rdi
movb (%rbx), %dl
nop
nop
nop
add $33727, %rcx
lea addresses_WC_ht+0x1a51d, %rsi
lea addresses_UC_ht+0x12b9d, %rdi
nop
nop
nop
sub %rbp, %rbp
mov $115, %rcx
rep movsb
cmp $34321, %rdi
lea addresses_A_ht+0x12c27, %rbx
sub $11772, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm0
vmovups %ymm0, (%rbx)
sub $36139, %rdi
lea addresses_normal_ht+0x3e1d, %r9
nop
nop
and $6171, %r13
movups (%r9), %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_A_ht+0x12d1d, %r9
nop
nop
nop
nop
cmp $21041, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%r9)
nop
xor $18398, %rbx
lea addresses_D_ht+0x309d, %rdx
nop
nop
nop
nop
nop
xor %rbx, %rbx
movb (%rdx), %cl
nop
and %rdi, %rdi
lea addresses_normal_ht+0x8f1d, %rcx
nop
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
and $0xffffffffffffffc0, %rcx
movntdq %xmm6, (%rcx)
nop
cmp $24599, %r13
lea addresses_normal_ht+0xd01d, %r13
nop
nop
nop
xor $1077, %r9
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
movups %xmm4, (%r13)
nop
nop
nop
nop
nop
dec %rbp
lea addresses_WT_ht+0x1c41d, %r9
nop
nop
nop
nop
dec %r13
movups (%r9), %xmm1
vpextrq $0, %xmm1, %rdx
xor $10333, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rax
push %rcx
push %rdx
push %rsi

// Store
lea addresses_WT+0x167dd, %rdx
nop
and $50088, %rcx
movb $0x51, (%rdx)
nop
nop
nop
sub $21935, %r15

// Store
lea addresses_D+0x75d, %r10
dec %rax
movb $0x51, (%r10)
nop
nop
nop
nop
nop
inc %rdx

// Store
lea addresses_US+0x1829d, %r10
clflush (%r10)
nop
nop
cmp $47111, %r13
mov $0x5152535455565758, %rax
movq %rax, %xmm2
vmovntdq %ymm2, (%r10)
nop
nop
add $56470, %r15

// Store
lea addresses_PSE+0x17a1d, %r10
nop
nop
nop
nop
nop
and %rdx, %rdx
movb $0x51, (%r10)
nop
nop
nop
nop
add %rax, %rax

// Store
lea addresses_WT+0x131d, %r10
dec %r13
movw $0x5152, (%r10)
nop
cmp $55503, %r10

// Store
lea addresses_WT+0xad1d, %rdx
clflush (%rdx)
nop
nop
nop
nop
cmp $56437, %rcx
mov $0x5152535455565758, %r10
movq %r10, %xmm5
vmovups %ymm5, (%rdx)
nop
nop
xor %r15, %r15

// Faulty Load
lea addresses_WC+0x551d, %r15
nop
nop
sub %r13, %r13
mov (%r15), %rcx
lea oracles, %rax
and $0xff, %rcx
shlq $12, %rcx
mov (%rax,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'00': 753}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

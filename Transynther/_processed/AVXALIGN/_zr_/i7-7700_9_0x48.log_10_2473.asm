.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
lea addresses_UC_ht+0x2ec7, %rcx
add %r13, %r13
mov (%rcx), %ebp
add %rdi, %rdi
lea addresses_WT_ht+0x15ec7, %r9
nop
nop
nop
cmp $860, %rdx
movb (%r9), %r11b
mfence
lea addresses_normal_ht+0x136c7, %r13
and %rcx, %rcx
movl $0x61626364, (%r13)
nop
nop
nop
nop
xor %r11, %r11
lea addresses_UC_ht+0xab47, %r13
nop
nop
nop
nop
add %rdi, %rdi
movups (%r13), %xmm6
vpextrq $1, %xmm6, %r11
nop
nop
and $32602, %r11
lea addresses_UC_ht+0x17dc7, %r9
nop
nop
nop
add $18349, %rbp
mov $0x6162636465666768, %r13
movq %r13, %xmm5
movups %xmm5, (%r9)
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_D_ht+0x1dc33, %r9
nop
nop
nop
nop
nop
cmp $6167, %r11
mov (%r9), %rcx
nop
nop
nop
sub %r13, %r13
lea addresses_UC_ht+0x6fc7, %r9
nop
nop
nop
nop
xor %rcx, %rcx
movups (%r9), %xmm5
vpextrq $1, %xmm5, %r11
nop
nop
cmp $33171, %rbp
lea addresses_WT_ht+0x14f73, %rdi
nop
nop
nop
add $17963, %r11
mov (%rdi), %r13
nop
nop
nop
xor $9492, %r13
lea addresses_WC_ht+0x6ec7, %rdi
nop
nop
cmp $61494, %rdx
mov (%rdi), %r11
nop
nop
nop
nop
nop
cmp $46618, %rcx
lea addresses_normal_ht+0x86c7, %r13
nop
sub $55143, %rdx
mov (%r13), %r9
nop
nop
xor %r11, %r11
lea addresses_WC_ht+0x5ec7, %rbp
sub %r9, %r9
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
movups %xmm6, (%rbp)
nop
nop
dec %r9
lea addresses_A_ht+0x10ac7, %r11
clflush (%r11)
inc %r9
mov (%r11), %ecx
nop
nop
nop
sub %r13, %r13
lea addresses_normal_ht+0x1b8c7, %rcx
nop
add %r11, %r11
movups (%rcx), %xmm5
vpextrq $1, %xmm5, %rdi
nop
add %rdi, %rdi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r8
push %rcx
push %rsi

// Store
lea addresses_D+0x14447, %r15
nop
nop
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm2
vmovaps %ymm2, (%r15)
nop
nop
add $8195, %r8

// Load
lea addresses_UC+0x196c7, %r12
nop
and $13197, %r15
movups (%r12), %xmm0
vpextrq $1, %xmm0, %r11
add %r10, %r10

// Faulty Load
lea addresses_US+0x196c7, %rsi
nop
nop
nop
and $15336, %rcx
mov (%rsi), %r11d
lea oracles, %r15
and $0xff, %r11
shlq $12, %r11
mov (%r15,%r11,1), %r11
pop %rsi
pop %rcx
pop %r8
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/

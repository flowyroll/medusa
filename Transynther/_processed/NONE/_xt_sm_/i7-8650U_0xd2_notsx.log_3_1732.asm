.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x18cd3, %rdx
nop
add %r14, %r14
movups (%rdx), %xmm4
vpextrq $0, %xmm4, %rbp
nop
nop
cmp $40166, %r8
lea addresses_UC_ht+0x150d3, %r11
nop
nop
nop
nop
cmp $25389, %r14
movl $0x61626364, (%r11)
nop
xor $16542, %r14
lea addresses_WT_ht+0x138f3, %rdx
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, (%rdx)
nop
sub %rbp, %rbp
lea addresses_normal_ht+0x41f3, %rbp
clflush (%rbp)
nop
nop
nop
nop
dec %r8
mov (%rbp), %r9w
nop
sub $7881, %rbp
lea addresses_UC_ht+0x2d6b, %rsi
nop
nop
nop
cmp %rdx, %rdx
movb (%rsi), %r14b
nop
nop
nop
nop
sub %r8, %r8
lea addresses_WT_ht+0x19d13, %rsi
lea addresses_UC_ht+0xc7d3, %rdi
nop
nop
cmp %rdx, %rdx
mov $111, %rcx
rep movsl
nop
xor $61211, %r8
lea addresses_normal_ht+0xf0d3, %rdi
add $2638, %rcx
vmovups (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbp
nop
cmp %rbp, %rbp
lea addresses_D_ht+0x60d3, %rsi
lea addresses_WC_ht+0x19453, %rdi
nop
nop
sub %r14, %r14
mov $10, %rcx
rep movsl
nop
nop
and %r9, %r9
lea addresses_normal_ht+0x8bd3, %rsi
lea addresses_WT_ht+0x15813, %rdi
nop
nop
nop
nop
nop
sub %r9, %r9
mov $45, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r9
push %rax
push %rbp
push %rdi

// Store
lea addresses_A+0xacd3, %r9
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%r9)
nop
cmp $12095, %r11

// Store
lea addresses_US+0x1335f, %r9
nop
nop
nop
nop
nop
add $42237, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovaps %ymm3, (%r9)
nop
nop
nop
nop
nop
add %r11, %r11

// Load
lea addresses_A+0x9853, %r9
nop
nop
nop
and %r10, %r10
mov (%r9), %r11
nop
nop
nop
nop
nop
add %r9, %r9

// Store
mov $0x2236ad00000008d3, %rbp
nop
nop
nop
nop
cmp $24984, %rdi
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
add %r14, %r14

// Store
lea addresses_PSE+0x15d1f, %r9
dec %rdi
mov $0x5152535455565758, %r10
movq %r10, (%r9)
nop
inc %r14

// Store
lea addresses_PSE+0xfb45, %r9
nop
xor $64946, %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm6
vmovaps %ymm6, (%r9)
xor %r14, %r14

// Faulty Load
lea addresses_A+0xacd3, %r14
nop
xor $691, %r10
movb (%r14), %al
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'58': 3}
58 58 58
*/

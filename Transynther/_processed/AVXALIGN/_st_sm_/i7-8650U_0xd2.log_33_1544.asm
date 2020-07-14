.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1b6b4, %rsi
lea addresses_WC_ht+0x1d0dd, %rdi
nop
nop
nop
sub %r11, %r11
mov $41, %rcx
rep movsl
nop
nop
and $51461, %r15
lea addresses_WC_ht+0x1d055, %r11
nop
nop
inc %rdx
mov (%r11), %si
nop
cmp %rdx, %rdx
lea addresses_normal_ht+0xad5, %r15
add $47527, %rbp
movb (%r15), %cl
nop
nop
nop
cmp $23615, %rsi
lea addresses_WT_ht+0x18cd5, %rdx
xor $43528, %r11
mov (%rdx), %rdi
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x1bb71, %r15
nop
nop
nop
and $13803, %rbp
movb (%r15), %r11b
nop
nop
nop
xor $29999, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_D+0x102d5, %r15
nop
nop
sub $48891, %rdx
mov (%r15), %r13d
nop
nop
nop
nop
nop
add $33901, %r13

// Store
lea addresses_D+0x102d5, %rsi
and %rdi, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movups %xmm5, (%rsi)
nop
nop
nop
nop
cmp $61833, %rdi

// Store
lea addresses_UC+0x1a55, %rdi
cmp $25469, %r13
movw $0x5152, (%rdi)
nop
nop
and %rdi, %rdi

// Store
lea addresses_WT+0x18dbd, %rdx
nop
nop
xor $22204, %rdi
movw $0x5152, (%rdx)
nop
nop
nop
nop
cmp %rcx, %rcx

// Load
lea addresses_PSE+0x2c95, %rdx
nop
nop
nop
xor %rsi, %rsi
mov (%rdx), %r13d
nop
nop
cmp %r14, %r14

// Store
lea addresses_A+0xad61, %rdx
nop
nop
nop
nop
inc %r13
mov $0x5152535455565758, %r14
movq %r14, (%rdx)
nop
nop
nop
and $54524, %rsi

// Load
lea addresses_UC+0x14eb1, %r14
nop
nop
nop
xor $7354, %rsi
and $0xffffffffffffffc0, %r14
vmovaps (%r14), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rcx
nop
cmp $14171, %r14

// Faulty Load
lea addresses_D+0x102d5, %rsi
nop
nop
and %rcx, %rcx
mov (%rsi), %edx
lea oracles, %r15
and $0xff, %rdx
shlq $12, %rdx
mov (%r15,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'58': 33}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/

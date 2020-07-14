.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rbx
push %rcx
push %rdi
push %rdx
lea addresses_UC_ht+0x84e0, %rdx
add %rbx, %rbx
and $0xffffffffffffffc0, %rdx
vmovaps (%rdx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_WC_ht+0x13ef0, %r12
nop
nop
nop
inc %r11
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%r12)
cmp $19230, %rbx
lea addresses_UC_ht+0x17ce0, %r10
nop
nop
nop
nop
nop
add %rcx, %rcx
movb (%r10), %bl
nop
nop
nop
nop
cmp $40104, %rcx
lea addresses_WT_ht+0x198e0, %r10
and $32507, %rdx
mov (%r10), %bx
nop
nop
and $61688, %r10
lea addresses_WT_ht+0x460, %r12
xor $58879, %rdx
mov (%r12), %bx
dec %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// Load
lea addresses_WT+0x7a0, %r14
nop
nop
nop
and %r11, %r11
vmovaps (%r14), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rax
nop
nop
nop
nop
sub $27322, %rcx

// REPMOV
lea addresses_WT+0x58e0, %rsi
lea addresses_UC+0xb0e0, %rdi
nop
cmp $63409, %r9
mov $117, %rcx
rep movsb
nop
inc %r15

// Store
lea addresses_A+0x1644a, %r11
nop
nop
cmp $37614, %rcx
mov $0x5152535455565758, %r9
movq %r9, (%r11)
nop
nop
nop
nop
nop
xor %r9, %r9

// REPMOV
lea addresses_WT+0x34e0, %rsi
lea addresses_WC+0x1c860, %rdi
clflush (%rsi)
nop
xor $17351, %r11
mov $38, %rcx
rep movsq
nop
nop
nop
nop
and $985, %rsi

// Faulty Load
lea addresses_PSE+0x108e0, %rdi
nop
add %r9, %r9
movups (%rdi), %xmm1
vpextrq $1, %xmm1, %rsi
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/

.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %rdi
push %rdx
lea addresses_A_ht+0x1b358, %rdi
clflush (%rdi)
xor $47308, %rdx
movw $0x6162, (%rdi)
nop
nop
nop
nop
sub $4041, %rdx
lea addresses_normal_ht+0x8332, %r12
nop
cmp $6272, %r14
mov (%r12), %r15
nop
nop
nop
add $30353, %r10
pop %rdx
pop %rdi
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x47f4, %rsi
inc %r9
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
movups %xmm5, (%rsi)
cmp $19738, %rbp

// Store
lea addresses_WC+0x3580, %r9
nop
nop
and $44777, %r13
movb $0x51, (%r9)
and %r13, %r13

// REPMOV
mov $0x490, %rsi
lea addresses_D+0x14f43, %rdi
nop
nop
cmp %r11, %r11
mov $35, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_WC+0x90, %r9
nop
dec %rsi
movw $0x5152, (%r9)
nop
nop
nop
sub $20815, %rdi

// Faulty Load
lea addresses_PSE+0xe490, %r10
nop
nop
cmp $23621, %r13
vmovups (%r10), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_P'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'33': 18}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/

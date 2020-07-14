.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rbx
push %rdi
lea addresses_D_ht+0x5db8, %rbx
sub $42109, %r10
mov (%rbx), %r15
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x1cf62, %r15
nop
nop
nop
nop
inc %r12
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
and $58397, %r12
pop %rdi
pop %rbx
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x93fa, %rsi
nop
xor $21783, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovaps %ymm6, (%rsi)
add $64823, %r15

// Store
mov $0x654e900000000ada, %r14
nop
nop
nop
nop
and %r11, %r11
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
dec %r11

// Store
lea addresses_WT+0x1bfda, %rbp
nop
nop
nop
inc %r14
mov $0x5152535455565758, %rdi
movq %rdi, (%rbp)
nop
nop
add $26930, %r11

// Store
lea addresses_PSE+0x7b5a, %rcx
clflush (%rcx)
nop
add %r15, %r15
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
nop
nop
add $62690, %rcx

// Store
lea addresses_UC+0x1e3a, %rbp
nop
nop
nop
sub $38759, %r15
mov $0x5152535455565758, %r14
movq %r14, (%rbp)
nop
nop
nop
nop
nop
add %rcx, %rcx

// Faulty Load
lea addresses_PSE+0x171da, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
cmp %r11, %r11
movb (%rbp), %r14b
lea oracles, %rbp
and $0xff, %r14
shlq $12, %r14
mov (%rbp,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'33': 1}
33
*/

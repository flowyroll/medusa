.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
lea addresses_normal_ht+0x1094f, %rdi
nop
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
movups %xmm0, (%rdi)
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0x1524f, %r15
nop
nop
add %rbx, %rbx
movups (%r15), %xmm7
vpextrq $1, %xmm7, %rdx
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0xc54f, %r12
nop
nop
nop
nop
add %rdi, %rdi
movb (%r12), %cl
nop
nop
nop
nop
dec %rbx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x1914f, %r10
nop
xor %rsi, %rsi
movw $0x5152, (%r10)
nop
nop
nop
nop
nop
dec %rsi

// REPMOV
lea addresses_UC+0x1db4f, %rsi
lea addresses_UC+0x8e73, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor %r13, %r13
mov $33, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $9661, %rdx

// Faulty Load
lea addresses_PSE+0x574f, %r13
nop
sub $52616, %rcx
mov (%r13), %rsi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_A', 'same': False, 'AVXalign': True, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_UC', 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_PSE', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'33': 2}
33 33
*/

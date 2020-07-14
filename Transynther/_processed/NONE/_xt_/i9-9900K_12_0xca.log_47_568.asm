.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x13dcf, %r11
nop
nop
nop
nop
sub $23363, %r14
movl $0x61626364, (%r11)
nop
nop
nop
nop
add $12280, %rcx
lea addresses_WC_ht+0x58ef, %rdx
nop
nop
nop
nop
lfence
mov (%rdx), %r8
nop
nop
nop
nop
and %r9, %r9
lea addresses_A_ht+0xfba3, %r11
xor %rdx, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, (%r11)
and $52925, %r14
lea addresses_UC_ht+0x1094f, %r11
nop
nop
nop
nop
nop
add $8204, %rdi
movl $0x61626364, (%r11)
cmp %rdx, %rdx
lea addresses_D_ht+0x1e007, %rsi
lea addresses_WT_ht+0x137cf, %rdi
nop
nop
nop
cmp %r14, %r14
mov $55, %rcx
rep movsb
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi

// Store
lea addresses_A+0xdbf7, %rbp
nop
and $22123, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
vmovaps %ymm4, (%rbp)
nop
nop
sub %rcx, %rcx

// Load
lea addresses_D+0x1f95f, %r9
nop
nop
nop
inc %r8
vmovups (%r9), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
nop
nop
sub %rcx, %rcx

// Faulty Load
lea addresses_D+0x1e1cf, %r8
nop
nop
nop
nop
sub %rcx, %rcx
vmovups (%r8), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbp
lea oracles, %r8
and $0xff, %rbp
shlq $12, %rbp
mov (%r8,%rbp,1), %rbp
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': True, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': True, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 9}}
{'36': 47}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/

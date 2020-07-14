.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %r8
push %rcx
push %rdx
lea addresses_WT_ht+0x11a7d, %r12
nop
sub %r8, %r8
mov (%r12), %edx
nop
nop
and $20955, %r11
lea addresses_WC_ht+0x1407d, %r15
nop
and %rcx, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
movups %xmm5, (%r15)
nop
nop
nop
xor %r15, %r15
lea addresses_WT_ht+0x907d, %rdx
cmp $24082, %r10
mov $0x6162636465666768, %r12
movq %r12, (%rdx)
nop
add %r11, %r11
pop %rdx
pop %rcx
pop %r8
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_normal+0x19a7d, %rbp
nop
dec %rbx
vmovups (%rbp), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r11
nop
nop
sub $21245, %rsi

// Store
lea addresses_normal+0x311d, %rdx
nop
nop
nop
xor %r12, %r12
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movups %xmm5, (%rdx)
inc %rbp

// Store
lea addresses_A+0x647d, %rcx
nop
nop
nop
nop
xor $33565, %r12
movl $0x51525354, (%rcx)
nop
nop
nop
nop
xor %rcx, %rcx

// REPMOV
lea addresses_PSE+0x1e43d, %rsi
lea addresses_WT+0x464d, %rdi
nop
nop
nop
nop
nop
xor %r12, %r12
mov $12, %rcx
rep movsl
sub %rdi, %rdi

// Load
lea addresses_D+0x4e7d, %r12
nop
cmp $39178, %rdi
vmovups (%r12), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
nop
nop
nop
sub %r11, %r11

// Faulty Load
lea addresses_WT+0x7c7d, %rdi
nop
nop
nop
nop
add $36421, %rdx
movaps (%rdi), %xmm1
vpextrq $1, %xmm1, %rbp
lea oracles, %rdi
and $0xff, %rbp
shlq $12, %rbp
mov (%rdi,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_PSE', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_WT', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 8}}
{'33': 1}
33
*/

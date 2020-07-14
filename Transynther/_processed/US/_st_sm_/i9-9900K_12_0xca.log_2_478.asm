.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x19b42, %r13
clflush (%r13)
nop
cmp $47010, %r14
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
movups %xmm3, (%r13)
nop
nop
nop
add $36002, %rdx
lea addresses_D_ht+0x8c82, %rsi
lea addresses_normal_ht+0x6692, %rdi
nop
xor $50969, %rbp
mov $58, %rcx
rep movsb
nop
nop
nop
add $25842, %r13
lea addresses_normal_ht+0x1042, %rdx
nop
nop
nop
nop
and $43814, %rbp
movb $0x61, (%rdx)
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_D_ht+0x7842, %r13
xor %rdi, %rdi
mov (%r13), %dx
nop
nop
nop
add $60068, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %rbp
push %rbx
push %rcx

// Store
lea addresses_D+0x10d82, %r14
nop
nop
nop
nop
nop
add $821, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%r14)
nop
nop
nop
nop
and %r8, %r8

// Store
mov $0xa42, %rbx
clflush (%rbx)
nop
nop
nop
dec %r15
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movups %xmm3, (%rbx)
xor $21753, %r15

// Store
lea addresses_US+0xfb42, %rcx
sub %rbp, %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
nop
nop
nop
add $57756, %rbx

// Store
lea addresses_WT+0x1d202, %r8
nop
nop
nop
sub %rbp, %rbp
movb $0x51, (%r8)
nop
nop
nop
nop
nop
xor $21047, %r8

// Store
lea addresses_WC+0x31a2, %r15
nop
nop
nop
nop
nop
cmp $50014, %rbp
movl $0x51525354, (%r15)
sub $52993, %r8

// Load
lea addresses_D+0x16342, %r15
and %rbx, %rbx
vmovaps (%r15), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r14
xor $9748, %r8

// Faulty Load
lea addresses_US+0xfb42, %r15
nop
nop
nop
nop
nop
xor $23938, %r14
mov (%r15), %rbx
lea oracles, %r15
and $0xff, %rbx
shlq $12, %rbx
mov (%r15,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': True, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_D_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'58': 2}
58 58
*/

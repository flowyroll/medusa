.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdx
lea addresses_D_ht+0xc8d9, %r13
add $5075, %r15
mov $0x6162636465666768, %r9
movq %r9, %xmm6
movups %xmm6, (%r13)
nop
nop
nop
nop
nop
xor $9038, %r14
lea addresses_normal_ht+0x2259, %rcx
nop
nop
nop
nop
inc %r10
mov (%rcx), %rdx
nop
nop
nop
xor $48763, %rcx
pop %rdx
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdx

// Store
mov $0xa59, %r11
nop
and %r14, %r14
movb $0x51, (%r11)
nop
nop
nop
nop
nop
add $19156, %r9

// Load
lea addresses_PSE+0xda59, %rax
sub $17520, %rdx
movb (%rax), %r9b
nop
cmp %rdx, %rdx

// Store
lea addresses_PSE+0x18fc1, %r11
clflush (%r11)
nop
nop
xor $33574, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%r11)
nop
add %rax, %rax

// Load
lea addresses_A+0x14759, %rax
nop
nop
nop
nop
nop
cmp %rcx, %rcx
vmovups (%rax), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdx
nop
nop
nop
cmp $56442, %r9

// Store
lea addresses_A+0x10bd9, %r11
nop
nop
xor %rdx, %rdx
mov $0x5152535455565758, %r9
movq %r9, (%r11)
nop
nop
and $33273, %r9

// Faulty Load
lea addresses_UC+0x16059, %rax
nop
nop
xor %r11, %r11
mov (%rax), %ebx
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'00': 22}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/

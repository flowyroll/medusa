.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x14008, %r8
nop
nop
nop
nop
dec %r12
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
sub $43213, %r15
lea addresses_normal_ht+0x1d86c, %rcx
nop
nop
and %r14, %r14
mov (%rcx), %rax
nop
dec %rax
lea addresses_WT_ht+0x1a628, %r14
nop
nop
nop
nop
sub %r8, %r8
mov (%r14), %r12d
nop
nop
nop
sub %r12, %r12
lea addresses_WC_ht+0x4ea8, %rsi
lea addresses_WC_ht+0x12a8, %rdi
nop
nop
nop
nop
xor %rdx, %rdx
mov $35, %rcx
rep movsb
nop
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0x125a8, %r12
nop
cmp $8757, %rdx
mov $0x6162636465666768, %rax
movq %rax, (%r12)
nop
nop
add $12564, %r14
lea addresses_normal_ht+0x16ba8, %rcx
nop
nop
nop
add $17112, %r14
mov $0x6162636465666768, %r8
movq %r8, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
cmp %r15, %r15
lea addresses_WC_ht+0x70a8, %r8
nop
nop
nop
and $3246, %rdx
mov $0x6162636465666768, %r15
movq %r15, %xmm0
movups %xmm0, (%r8)
nop
nop
nop
dec %rdx
lea addresses_WT_ht+0xbec0, %rcx
clflush (%rcx)
nop
and $57019, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x99be, %r11
nop
nop
nop
nop
nop
xor $26508, %r13
movw $0x5152, (%r11)
nop
nop
nop
nop
xor $20814, %r13

// Store
lea addresses_D+0xfb68, %r11
nop
nop
nop
add $60129, %r14
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movups %xmm2, (%r11)
nop
cmp %r13, %r13

// REPMOV
lea addresses_US+0x10968, %rsi
lea addresses_PSE+0x2388, %rdi
nop
and %r10, %r10
mov $115, %rcx
rep movsw
nop
nop
xor %r10, %r10

// Store
lea addresses_A+0xd8a8, %r13
clflush (%r13)
cmp %r14, %r14
movw $0x5152, (%r13)
and $7944, %rbx

// Faulty Load
lea addresses_A+0xd8a8, %r13
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%r13), %r12d
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_US'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'52': 6}
52 52 52 52 52 52
*/

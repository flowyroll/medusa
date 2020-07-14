.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xf5c3, %r14
nop
nop
sub $1576, %r8
movw $0x6162, (%r14)
nop
nop
nop
nop
cmp $28008, %r12
lea addresses_D_ht+0x82a4, %rbx
nop
nop
and $41445, %rdx
movl $0x61626364, (%rbx)
nop
nop
nop
nop
cmp $52406, %rcx
lea addresses_WC_ht+0x19356, %rsi
lea addresses_UC_ht+0x89a8, %rdi
nop
nop
dec %r8
mov $117, %rcx
rep movsl
nop
add $60282, %rcx
lea addresses_WC_ht+0x1b3a4, %rsi
lea addresses_D_ht+0x10fd6, %rdi
clflush (%rdi)
and $59127, %r12
mov $47, %rcx
rep movsb
nop
nop
nop
and %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
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
push %rbx
push %rdi
push %rsi

// Store
lea addresses_US+0x1f9e4, %r10
nop
dec %r9
mov $0x5152535455565758, %r11
movq %r11, %xmm1
vmovaps %ymm1, (%r10)
nop
nop
nop
nop
and %r13, %r13

// Store
lea addresses_normal+0xc014, %rdi
nop
nop
nop
add $13119, %rsi
movl $0x51525354, (%rdi)
and %rsi, %rsi

// Load
mov $0x5a4, %r11
nop
nop
and $13370, %rbx
mov (%r11), %r13w
dec %r10

// Load
mov $0xc0439000000001c, %r13
clflush (%r13)
nop
cmp %r11, %r11
mov (%r13), %r9
nop
nop
nop
nop
nop
cmp $58644, %rdi

// Faulty Load
lea addresses_D+0xc5a4, %rbx
nop
nop
nop
nop
nop
and %r11, %r11
movups (%rbx), %xmm0
vpextrq $0, %xmm0, %rdi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rbx
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'36': 10}
36 36 36 36 36 36 36 36 36 36
*/

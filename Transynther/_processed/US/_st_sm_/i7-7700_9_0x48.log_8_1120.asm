.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rax
push %rbx
lea addresses_D_ht+0xf541, %rbx
clflush (%rbx)
nop
sub %r11, %r11
movl $0x61626364, (%rbx)
nop
inc %r10
pop %rbx
pop %rax
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r9
push %rax
push %rdi
push %rsi

// Store
lea addresses_US+0x7b69, %r9
nop
nop
nop
nop
dec %rsi
mov $0x5152535455565758, %rax
movq %rax, %xmm4
vmovaps %ymm4, (%r9)
nop
nop
nop
nop
nop
add $21804, %rax

// Load
lea addresses_US+0xbe39, %r15
nop
nop
nop
add $29609, %r12
mov (%r15), %r10w
nop
nop
and %rsi, %rsi

// Faulty Load
lea addresses_US+0x7b69, %r10
nop
nop
nop
add %r12, %r12
mov (%r10), %edi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rax
pop %r9
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'58': 8}
58 58 58 58 58 58 58 58
*/

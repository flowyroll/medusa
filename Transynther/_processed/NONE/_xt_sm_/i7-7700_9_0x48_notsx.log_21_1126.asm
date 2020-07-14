.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x148cf, %r9
clflush (%r9)
nop
nop
nop
nop
nop
and %r10, %r10
mov $0x5152535455565758, %rdi
movq %rdi, (%r9)
nop
nop
nop
and $22995, %r10

// Store
lea addresses_WC+0xb7e1, %rax
nop
nop
nop
nop
nop
xor $211, %r11
mov $0x5152535455565758, %r10
movq %r10, (%rax)
nop
nop
nop
nop
nop
xor $13545, %r10

// REPMOV
lea addresses_PSE+0x1c00f, %rsi
lea addresses_normal+0x128cf, %rdi
nop
nop
nop
nop
sub $2011, %r10
mov $2, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %r11

// Store
lea addresses_normal+0x128cf, %rsi
nop
nop
nop
nop
nop
dec %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm0
movups %xmm0, (%rsi)
nop
nop
nop
nop
nop
and $17755, %rdi

// Store
lea addresses_US+0x56c6, %r9
clflush (%r9)
nop
nop
nop
nop
cmp %rbp, %rbp
movl $0x51525354, (%r9)
nop
nop
nop
nop
and %rcx, %rcx

// Load
lea addresses_RW+0x480f, %r10
nop
nop
nop
nop
add %rax, %rax
vmovups (%r10), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
nop
xor $762, %rcx

// Faulty Load
lea addresses_normal+0x128cf, %r9
nop
nop
nop
nop
sub $35355, %rax
mov (%r9), %ecx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_normal'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_PSE'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'58': 21}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/

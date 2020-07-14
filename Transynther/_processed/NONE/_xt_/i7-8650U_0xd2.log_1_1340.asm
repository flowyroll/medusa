.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x1aee2, %rsi
clflush (%rsi)
nop
nop
add $4623, %r14
movw $0x5152, (%rsi)
cmp $2940, %rsi

// Store
mov $0xdfa, %r8
nop
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
movups %xmm7, (%r8)
nop
nop
inc %r9

// Store
lea addresses_RW+0xaaca, %rdi
xor $19947, %r8
mov $0x5152535455565758, %r9
movq %r9, %xmm7
vmovups %ymm7, (%rdi)
add $32771, %r14

// Faulty Load
lea addresses_D+0x142ca, %r9
clflush (%r9)
nop
add $37692, %r15
movups (%r9), %xmm3
vpextrq $1, %xmm3, %rdi
lea oracles, %r8
and $0xff, %rdi
shlq $12, %rdi
mov (%r8,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'36': 1}
36
*/

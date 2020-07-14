.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x11d42, %rsi
add %rax, %rax
mov (%rsi), %r14
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0xd20f, %rsi
lea addresses_UC_ht+0xf912, %rdi
clflush (%rsi)
nop
nop
nop
cmp $17149, %r11
mov $16, %rcx
rep movsw
nop
nop
xor $25527, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rax
push %rbp
push %rdx
push %rsi

// Load
mov $0xe92, %rsi
nop
nop
nop
nop
nop
xor $52691, %rax
mov (%rsi), %r9w
nop
nop
nop
nop
nop
cmp $36410, %r10

// Store
lea addresses_WT+0x138c2, %rdx
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r14
movq %r14, %xmm5
movups %xmm5, (%rdx)
nop
nop
nop
nop
add $14145, %rbp

// Store
mov $0x992, %rax
nop
nop
nop
add %rsi, %rsi
movl $0x51525354, (%rax)
nop
cmp %r14, %r14

// Store
lea addresses_WT+0xa490, %r9
clflush (%r9)
nop
sub %r10, %r10
mov $0x5152535455565758, %rax
movq %rax, (%r9)
nop
add %rsi, %rsi

// Load
mov $0x10eb860000000592, %r10
nop
nop
nop
inc %rbp
vmovups (%r10), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rax
sub $12291, %r10

// Store
lea addresses_UC+0xbdd2, %rsi
nop
inc %r9
movw $0x5152, (%rsi)
and $18495, %r14

// Load
lea addresses_US+0xb26a, %rsi
nop
sub %r10, %r10
mov (%rsi), %bp

// Exception!!!
nop
nop
mov (0), %rbp
nop
nop
and $35160, %rdx

// Faulty Load
lea addresses_US+0x1c912, %rsi
clflush (%rsi)
nop
nop
nop
cmp $20252, %r14
mov (%rsi), %ebp
lea oracles, %r9
and $0xff, %rbp
shlq $12, %rbp
mov (%r9,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'00': 11}
00 00 00 00 00 00 00 00 00 00 00
*/

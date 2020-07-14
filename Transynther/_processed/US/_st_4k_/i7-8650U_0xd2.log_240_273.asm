.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xd1b, %rsi
lea addresses_normal_ht+0xebdb, %rdi
nop
nop
nop
sub %r9, %r9
mov $51, %rcx
rep movsw
nop
add %r15, %r15
lea addresses_WT_ht+0x2e3b, %rsi
lea addresses_normal_ht+0x39b5, %rdi
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $24, %rcx
rep movsb
nop
nop
nop
nop
nop
lfence
lea addresses_D_ht+0x1e19b, %r15
nop
nop
inc %rsi
movw $0x6162, (%r15)
sub %rbp, %rbp
lea addresses_normal_ht+0xbe9b, %rcx
nop
nop
nop
nop
nop
xor $41158, %r8
mov (%rcx), %r15w
nop
sub %r8, %r8
lea addresses_normal_ht+0x1055b, %rsi
lea addresses_WC_ht+0xa425, %rdi
nop
nop
nop
and $32430, %rdx
mov $23, %rcx
rep movsl
nop
xor $45954, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x31ab51000000051b, %r8
nop
xor %r12, %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r8)
nop
nop
xor $36871, %r12

// Load
lea addresses_RW+0x5adb, %rdx
nop
nop
nop
nop
nop
xor %rsi, %rsi
vmovups (%rdx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
nop
and $11553, %rcx

// Store
lea addresses_RW+0x1509b, %rcx
nop
nop
nop
dec %r12
movb $0x51, (%rcx)
nop
nop
nop
nop
sub %rdi, %rdi

// Load
lea addresses_US+0x791b, %rdx
nop
nop
nop
nop
nop
xor $28206, %r13
vmovups (%rdx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r8
and %rcx, %rcx

// Faulty Load
lea addresses_US+0x1651b, %rdi
nop
nop
nop
nop
nop
sub $55930, %rcx
mov (%rdi), %rsi
lea oracles, %r12
and $0xff, %rsi
shlq $12, %rsi
mov (%r12,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'58': 240}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/

.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x133be, %rsi
lea addresses_WC_ht+0x835e, %rdi
nop
nop
and %r8, %r8
mov $6, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $7291, %r10
lea addresses_A_ht+0x144aa, %rsi
lea addresses_A_ht+0x467a, %rdi
nop
nop
nop
sub $55609, %rax
mov $85, %rcx
rep movsb
nop
nop
add %r10, %r10
lea addresses_UC_ht+0xd8da, %rsi
lea addresses_WC_ht+0xc70a, %rdi
nop
cmp %r10, %r10
mov $111, %rcx
rep movsw
nop
xor $51107, %r10
lea addresses_WT_ht+0xdd0a, %rsi
lea addresses_D_ht+0x1250a, %rdi
nop
add $7143, %rbx
mov $73, %rcx
rep movsw
and %rsi, %rsi
lea addresses_WC_ht+0x17e1c, %rcx
clflush (%rcx)
nop
sub $50064, %rsi
movb (%rcx), %al
nop
nop
sub $41940, %rax
lea addresses_D_ht+0x1a0dc, %rbx
nop
nop
sub %rcx, %rcx
mov (%rbx), %edi
nop
nop
nop
nop
and %r10, %r10
lea addresses_D_ht+0x10a, %r10
nop
nop
nop
inc %rsi
and $0xffffffffffffffc0, %r10
movntdqa (%r10), %xmm3
vpextrq $1, %xmm3, %rcx
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x1dd0a, %r10
nop
nop
nop
nop
nop
sub %rsi, %rsi
movb (%r10), %al
nop
nop
nop
add $39729, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %r8
push %r9
push %rdx

// Load
lea addresses_D+0x450a, %r12
nop
nop
nop
nop
cmp $49881, %r11
mov (%r12), %r8
nop
nop
nop
nop
and $22611, %r8

// Store
mov $0x1d8fbf000000040a, %r15
nop
nop
xor %r9, %r9
mov $0x5152535455565758, %rdx
movq %rdx, (%r15)
nop
nop
xor $57708, %rdx

// Store
mov $0x132, %r9
nop
nop
nop
nop
nop
sub %r8, %r8
mov $0x5152535455565758, %r13
movq %r13, (%r9)
nop
nop
nop
nop
nop
xor %r8, %r8

// Store
lea addresses_UC+0xa8ba, %r13
nop
dec %r8
movw $0x5152, (%r13)
nop
sub $9125, %r12

// Store
mov $0x697c760000000392, %rdx
nop
xor $4309, %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm7
vmovups %ymm7, (%rdx)
nop
nop
add %r8, %r8

// Store
lea addresses_WC+0x63ca, %r8
dec %r9
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovups %ymm4, (%r8)
xor %rdx, %rdx

// Faulty Load
lea addresses_normal+0x1050a, %r15
nop
nop
nop
nop
nop
and $15414, %r8
mov (%r15), %r13d
lea oracles, %rdx
and $0xff, %r13
shlq $12, %r13
mov (%rdx,%r13,1), %r13
pop %rdx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'34': 3}
34 34 34
*/

.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rbx
push %rcx
lea addresses_A_ht+0x1f93, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
and $1921, %r11
movb (%rcx), %bl
nop
nop
nop
nop
nop
and %rbx, %rbx
pop %rcx
pop %rbx
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %rax
push %rbx
push %rcx

// Store
lea addresses_RW+0x2273, %r11
nop
nop
nop
nop
dec %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm2
movups %xmm2, (%r11)
xor $12281, %rax

// Store
lea addresses_D+0x8b73, %r8
nop
nop
and %r15, %r15
mov $0x5152535455565758, %r11
movq %r11, %xmm6
vmovaps %ymm6, (%r8)
nop
sub %r15, %r15

// Load
mov $0x13f, %r14
nop
nop
nop
nop
xor $17276, %rax
mov (%r14), %r11
nop
nop
and $9024, %r15

// Store
lea addresses_normal+0x3e73, %rbx
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %r8
movq %r8, (%rbx)
nop
nop
add $46161, %rbx

// Store
lea addresses_normal+0x1b747, %r11
nop
and %rax, %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r11)

// Exception!!!
mov (0), %rbx
nop
nop
add %r15, %r15

// Faulty Load
mov $0x428d6f0000000273, %rax
nop
cmp $63961, %rbx
movb (%rax), %cl
lea oracles, %r15
and $0xff, %rcx
shlq $12, %rcx
mov (%r15,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'00': 13, '58': 75}
58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 00 00 58 58 58 58 00 58 00 00 58 58 58 58 58 00 58 58 58 58 58 58 58 00
*/

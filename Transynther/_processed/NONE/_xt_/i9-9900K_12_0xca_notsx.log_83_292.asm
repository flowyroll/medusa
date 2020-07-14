.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
lea addresses_WC_ht+0xf89, %r13
nop
nop
nop
nop
add %r12, %r12
mov $0x6162636465666768, %r9
movq %r9, %xmm0
and $0xffffffffffffffc0, %r13
movaps %xmm0, (%r13)
nop
nop
nop
nop
nop
sub $8832, %r9
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %rbp
push %rbx

// Store
mov $0x3339e500000005f9, %r8
nop
nop
xor $51975, %rbx
movl $0x51525354, (%r8)
nop
dec %rbp

// Faulty Load
lea addresses_normal+0x1b3f9, %r15
nop
nop
nop
nop
nop
sub $14206, %rbp
movups (%r15), %xmm4
vpextrq $1, %xmm4, %r14
lea oracles, %r15
and $0xff, %r14
shlq $12, %r14
mov (%r15,%r14,1), %r14
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 4}}
{'34': 83}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/

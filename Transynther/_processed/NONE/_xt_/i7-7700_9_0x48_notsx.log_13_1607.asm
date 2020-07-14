.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdx

// Store
mov $0x60d, %r13
nop
nop
xor $59936, %r9
movw $0x5152, (%r13)
sub %r9, %r9

// Store
lea addresses_D+0xf7f, %r8
clflush (%r8)
nop
add $32716, %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm5
vmovups %ymm5, (%r8)
nop
nop
nop
nop
nop
xor $31026, %rcx

// Store
lea addresses_RW+0x7403, %r9
nop
nop
nop
nop
and $26164, %rcx
movb $0x51, (%r9)
nop
nop
nop
cmp $19116, %r8

// Store
lea addresses_A+0x3f83, %r13
nop
nop
nop
nop
and %rbx, %rbx
movw $0x5152, (%r13)
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_US+0xede3, %r8
nop
nop
nop
inc %rdx
mov $0x5152535455565758, %r9
movq %r9, %xmm2
movaps %xmm2, (%r8)
sub $31583, %r14

// Store
mov $0x3103380000000143, %rdx
nop
xor %r9, %r9
mov $0x5152535455565758, %rbx
movq %rbx, (%rdx)
nop
cmp $35078, %rcx

// Faulty Load
lea addresses_normal+0x11503, %rbx
nop
xor $30038, %r14
mov (%rbx), %ecx
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_P', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_US', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 5}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'34': 13}
34 34 34 34 34 34 34 34 34 34 34 34 34
*/
